<script setup lang="ts">
import { ref } from 'vue';

const message = ref('正在请求 Spring Boot 后端接口...');

setTimeout(() => {
    fetch('http://localhost:8080/api/hello')
        .then(response => response.text())
        .then(data => {
            message.value = data;
        })
}, 1000);



</script>

<template>
    <h1>{{ message }}</h1>
</template>