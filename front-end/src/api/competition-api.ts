import axiosClient from '~/api/axios-client';
import { ICompetition } from '~/types';

export const CompetitionApi = {
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
  }
};
