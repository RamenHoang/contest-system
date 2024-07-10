import axiosClient from '~/api/axios-client';
import { ICompetition, ISetupCompetition, ISubmitAnswer } from '~/types';

export const CompetitionApi = {
  async getListCompetition() {
    try {
      const { data } = await axiosClient.get('/competitions/list-competition?pageIndex=1&pageSize=200');
      return data;
    } catch (error) {
      console.log(error);
    }
  },

  async getCompetitionsByUser() {
    try {
      const { data } = await axiosClient.get('/competitions/get-competitions-by-user?pageIndex=1&pageSize=200');
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

  async createCompetition(competition: Partial<ICompetition>) {
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
        `/competitions/statistic-participant/${id}?pageIndex=1&pageSize=200&fromDate=2024-01-01 17:00:00&toDate=2024-12-31 17:00:00`
      );
      return data;
    } catch (error) {
      console.log(error);
    }
  },

  async getInfoStep2(id: string) {
    try {
      const { data } = await axiosClient.get(`/competitions/get-info-step2/${id}`);
      return data;
    } catch (error) {
      console.log(error);
    }
  },

  async exportExcel(id: string, pageIndex = 1, pageSize = 100, fromDate: string, toDate: string) {
    try {
      const url = `/competitions/export-excel/${id}?pageIndex=${pageIndex}&pageSize=${pageSize}&fromDate=${encodeURIComponent(fromDate)}&toDate=${encodeURIComponent(toDate)}`;
      const response = await axiosClient.get(url, {
        responseType: 'blob' // Important for handling binary data
      });
      const blob = new Blob([response.data], {
        type: 'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet'
      });
      const link = document.createElement('a');
      link.href = window.URL.createObjectURL(blob);
      link.download = `export_${id}_${new Date().toISOString()}.xlsx`;
      document.body.appendChild(link);
      link.click();
      document.body.removeChild(link);
    } catch (error) {
      console.error(error);
    }
  },

  async exportExcelFast(id: string, pageIndex = 1, pageSize = 100) {
    try {
      const url = `/competitions/export-excel/${id}?pageIndex=${pageIndex}&pageSize=${pageSize}`;
      const response = await axiosClient.get(url, {
        responseType: 'blob' // Important for handling binary data
      });
      const blob = new Blob([response.data], {
        type: 'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet'
      });
      const link = document.createElement('a');
      link.href = window.URL.createObjectURL(blob);
      link.download = `export_${id}_${new Date().toISOString()}.xlsx`;
      document.body.appendChild(link);
      link.click();
      document.body.removeChild(link);
    } catch (error) {
      console.error(error);
    }
  },

  async publishCompetition(id: string) {
    try {
      const { data } = await axiosClient.get(`/competitions/publish-competition/${id}`);
      return data;
    } catch (error) {
      console.log(error);
    }
  },

  async deleteCompetition(id: string) {
    try {
      const { data } = await axiosClient.delete(`/competitions/delete/${id}`);
      return data;
    } catch (error) {
      console.log(error);
    }
  }
};
