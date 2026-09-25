<script setup lang="ts">
import { ref } from 'vue';

interface StudyRecord {
    id: number;
    title: string;
    done: boolean;
    createTime: string;
}

const list = ref<StudyRecord[]>([])

const submitRecord = () => {
    fetch('http://localhost:8080/api/study')
        .then(Response => Response.json())
        .then(data => {
            list.value = data
        })
}
</script>

<template>
    <div>
        <button @click="submitRecord">获取数据库</button>

        <table>
            <thead>
                <tr>
                    <th>ID</th>
                    <th>学习内容</th>
                    <th>是否完成</th>
                    <th>创建时间</th>
                </tr>
            </thead>

            <tbody>
                <tr v-for="record in list" :key="record.id">
                    <td>{{ record.id }}</td>
                    <td>{{ record.title }}</td>
                    <td>{{ record.done ? '已完成' : '未完成' }}</td>
                    <td>{{ record.createTime }}</td>
                </tr>
            </tbody>
        </table>
    </div>
</template>