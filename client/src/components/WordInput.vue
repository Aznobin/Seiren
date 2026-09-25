<script setup lang='ts'>
import { ref } from 'vue';

const result = ref('')
let word = ref('')

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

</script>

<template>

    <div>
        输入单词：
        <input type='text' v-model='word' @keyup.enter="recordWord">
        <button @click="recordWord">录入</button>
        {{ result }}
    </div>

</template>