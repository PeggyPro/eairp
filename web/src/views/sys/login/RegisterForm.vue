<template>
  <div v-if="getShow">
    <LoginFormTitle class="enter-x" />
    <Form class="p-4 enter-x" :model="formData" :rules="getFormRules" ref="formRef">
      <FormItem name="username" class="enter-x">
        <Input
          class="fix-auto-fill"
          size="large"
          v-model:value="formData.username"
          :placeholder="t('sys.login.userName')"
        />
      </FormItem>
      <FormItem name="email" class="enter-x">
        <Input
            size="large"
            v-model:value="formData.email"
            :placeholder="t('sys.login.email')"
            class="fix-auto-fill"
        />
      </FormItem>
      <FormItem name="emailCode" class="enter-x">
        <CountdownInput
            size="large"
            class="fix-auto-fill"
            v-model:value="formData.emailCode"
            :placeholder="t('sys.login.emailCode')"
            count=120
            :sendCodeApi="sendEmailCodeApi"
        />
      </FormItem>

      <FormItem name="password" class="enter-x">
        <StrengthMeter
          size="large"
          v-model:value="formData.password"
          :placeholder="t('sys.login.password')"
        />
      </FormItem>
      <FormItem name="confirmPassword" class="enter-x">
        <InputPassword
          size="large"
          visibilityToggle
          v-model:value="formData.confirmPassword"
          :placeholder="t('sys.login.confirmPassword')"
        />
      </FormItem>

      <FormItem class="enter-x" name="policy">
        <!-- No logic, you need to deal with it yourself -->
        <Checkbox v-model:checked="formData.policy" size="small">
          {{ t('sys.login.policy') }}
        </Checkbox>
      </FormItem>

      <Button
        type="primary"
        class="enter-x"
        size="large"
        block
        @click="handleRegister"
        :loading="loading"
      >
        {{ t('sys.login.registerButton') }}
      </Button>
      <Button size="large" block class="mt-4 enter-x" @click="handleBackLogin">
        {{ t('sys.login.backSignIn') }}
      </Button>
    </Form>
  </div>
</template>
<script lang="ts" setup>
  import { reactive, ref, unref, computed } from 'vue';
  import LoginFormTitle from './LoginFormTitle.vue';
  import { Form, Input, Button, Checkbox} from 'ant-design-vue';
  import { StrengthMeter } from '@/components/StrengthMeter';
  import { CountdownInput } from '@/components/CountDown';
  import { useI18n } from '@/hooks/web/useI18n';
  import {
    useLoginState,
    useFormRules,
    useFormValid,
    LoginStateEnum, encryptByAES,
  } from './useLogin';
  import {register} from '@/api/sys/user'
  import {sendEmailCode} from "@/api/sys/user";

  const FormItem = Form.Item;
  const InputPassword = Input.Password;
  const { t } = useI18n();
  const { handleBackLogin, getLoginState, handleBackMobileLogin } = useLoginState();

  const formRef = ref();
  const loading = ref(false);

  const formData = reactive({
    username: '',
    email: '',
    emailCode: '',
    password: '',
    confirmPassword: '',
    policy: false,
  });

  const { getFormRules } = useFormRules(formData);
  const { validForm } = useFormValid(formRef);

  const getShow = computed(() => unref(getLoginState) === LoginStateEnum.REGISTER);

  async function handleRegister() {
    const data = await validForm();
    if (!data) return;
    loading.value = true;

    const secretKey = '7Fd2u4qF/3k0z6O1c9AeC7==';
    const encryptedPassword = encryptByAES(data.password, secretKey);
    const result = await register({
      username: data.username,
      password: encryptedPassword,
      email: data.email,
      emailCode: data.emailCode,
    });

    if (result.code === "A0001") {
      setTimeout(() => {
        handleBackLogin();
      }, 2000);
      loading.value = false;
    } else if(result.code === "A0112"){
      handleBackMobileLogin()
      loading.value = false;
    } else {
      loading.value = false;
    }
  }

  async function sendEmailCodeApi():Promise<boolean> {
    const email = await formRef.value.validateFields(['email']);
    if(email == false) {
      return Promise.resolve(false)
    }
    // sen code
    const result = await sendEmailCode(3, formData.email);
    if (result.code !== "A0101") {
      return Promise.resolve(false)
    }
    return Promise.resolve(true)
  }

</script>
