import axiosClient from '~/api/axios-client';
import { IExam } from '~/types';

export const ExamApi = {
  async createExam(examData: IExam) {
    try {
      const { data } = await axiosClient.post('/exam/create-exam', examData);
      return data;
    } catch (error) {
      console.log(error);
    }
  },

  async getExams() {
    try {
      const { data } = await axiosClient.get('/exam/get-exams-by-current-user?pageIndex=1&pageSize=50');
      return data;
    } catch (error) {
      console.log(error);
    }
  },

  async getExam(id: string) {
    try {
      const { data } = await axiosClient.get(`/exam/get-exam-detail/${id}`);
      return data;
    } catch (error) {
      console.log(error);
    }
  },

  async importExam(file: File) {
    try {
      const formData = new FormData();
      formData.append('docx', file); // Use the correct key as in your Postman setup

      const { data } = await axiosClient.post('/exam/import-exam-from-docx', formData, {
        headers: {
          'Content-Type': 'multipart/form-data'
        }
      });
      return data;
    } catch (error) {
      console.error('Failed to upload file:', error);
      throw error;
    }
  }
};
