import axiosClient from '~/api/axios-client';
import { ICompetition, ISetupCompetition, ISubmitAnswer } from '~/types';

export const CompetitionApi = {
  async getListCompetition() {
    try {
      const { data } = await axiosClient.get('/competitions/list-competition?pageIndex=1&pageSize=50');
      return data;
    } catch (error) {
      console.log(error);
    }
  },

  async getListInfoRequired() {
    try {
      const { data } = await axiosClient.get('/competitions/list-info-required');
      return data;
    } catch (error) {
      console.log(error);
    }
  },

  async createCompetition(competition: ICompetition) {
    try {
      const { data } = await axiosClient.post('/competitions/create-competitions', competition);
      return data;
    } catch (error) {
      console.log(error);
    }
  },

  async setUpCompetition(data: ISetupCompetition, id: string) {
    try {
      const { data: res } = await axiosClient.post(`/competitions/set-up-exam/${id}`, data);
      return res;
    } catch (error) {
      console.log(error);
    }
  },

  async startCompetition(id: string) {
    try {
      const { data } = await axiosClient.get(`/competitions/start-competition/${id}`);
      return data;
    } catch (error) {
      console.log(error);
    }
  },

  async getCompetitionById(id: string) {
    try {
      const { data } = await axiosClient.get(`/competitions/get-competition-by-id/${id}`);
      return data;
    } catch (error) {
      console.log(error);
    }
  },

  async submitAnswer(data: ISubmitAnswer, id: string) {
    try {
      const { data: res } = await axiosClient.post(`/competitions/submit-answer/${id}`, data);
      return res;
    } catch (error) {
      console.log(error);
    }
  },

  async getStatistics(id: string) {
    try {
      const { data } = await axiosClient.get(
        `/competitions/statistic-participant/${id}?pageIndex=1&pageSize=50&fromDate=2024-01-01 17:00:00&toDate=2024-12-31 17:00:00`
      );
      return data;
    } catch (error) {
      console.log(error);
    }
  }
};
