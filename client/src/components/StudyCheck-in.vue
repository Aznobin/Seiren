<script setup lang="ts">
import { ref } from 'vue';

const receiveStudy = ref('等待响应');
const count = ref(0);
let login = 1;
const title = "学习 Spring Boot";
const submitStudy = () => {
    fetch('http://localhost:8080/api/study', {
        method: 'POST',
        headers: {
            'Content-Type': 'application/json'
        },
        body: JSON.stringify({
            title,
            done: true
        })
    })
        .then(response => response.json())
        .then(data => {
            receiveStudy.value = data.message;
            console.log(data);
            count.value = login++;
        })
}


</script>

<template>
    <div>
        <button @click="submitStudy">点击打卡</button>
        <p>{{ receiveStudy }}x{{ count }}</p>
    </div>
</template>