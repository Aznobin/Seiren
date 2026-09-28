<script setup lang='ts'>
import { ref, nextTick } from 'vue';

const result = ref('');
let word = ref('');
const loading = ref(false);

const inputRef = ref<HTMLInputElement | null>(null);

/* 
const recordWord = () => {
    fetch('http://localhost:8080/api/word',{
        method : 'post',
        headers : {
            'content-type' : 'application/json'
        },
        body : JSON.stringify ({
            word : word.value
        })
    })
    .then(Response => {
        if (!Response.ok) {
            throw new Error('请求失败');
        }
        return Response.json();
    })
    .then(data => {
        result.value = `录入成功：${data.normalizedWord}，次数：${data.count}`;
    })
    .catch(()=>{
        result.value = '录入失败';
    })
} 
    */

async function recordWord() {
    loading.value = true;
    try {
        const response = await fetch('http://localhost:8080/api/word', {
            method: 'post',
            headers: {
                'content-type': 'application/json'
            },
            body: JSON.stringify({
                word: word.value
            })
        });

        const data = await response.json();

        if (!response.ok) {
            throw new Error(data.message);
        }

        result.value = `录入成功：${data.normalizedWord}，次数：${data.count}`;
        word.value = '';
        console.log(data);

    } catch (error) {
        console.log(error);
        if (error instanceof TypeError) {
            result.value = '网络连接失败，请稍后重试';
        } else if (error instanceof Error) {
            result.value = error.message;
        }
    } finally {
        loading.value = false;
        await nextTick();   // 等输入框重新启用后再获取焦点
        inputRef.value?.focus();
    }
}
</script>

<template>

    <div>
        输入单词：
        <input ref="inputRef" type='text' v-model='word' @keyup.enter="recordWord" :disabled="loading">
        <button @click="recordWord" :disabled="loading">录入</button>
        <br>{{ result }}
    </div>

</template>