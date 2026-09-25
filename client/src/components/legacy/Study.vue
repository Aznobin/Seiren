<script setup lang="ts">
import { ref } from 'vue';

const study = ref('');
const attendance = ref('');

fetch('http://localhost:8080/api/study')
    .then(response => response.json())
    .then(data => {
        study.value = data.title;
    });

fetch('http://localhost:8080/api/attendance')
    .then(response => response.json())
    .then(data => {
        attendance.value = data.present?'今日已出勤':'今日未出勤';
    });

</script>

<template>
    <div>
        <h1>{{ study }}</h1>
        <p>{{ attendance }}</p>
    </div>    
</template>