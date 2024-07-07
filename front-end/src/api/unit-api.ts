import axiosClient from '~/api/axios-client';
import { ICreateSubUnits, ISubUnit } from '~/types';

export const UnitApi = {
  async getListSubUnit(id: string) {
    try {
      const { data } = await axiosClient.get(`/competitions/get-units/${id}`);
      return data;
    } catch (error) {
      console.log(error);
    }
  },

  async createSubUnits(data: ICreateSubUnits, id: string) {
    try {
      const { data: res } = await axiosClient.post(`/competitions/add-units/${id}`, data);
      return res;
    } catch (error) {
      console.log(error);
    }
  },

  async updateSubUnits(data: Partial<ISubUnit>, id: string) {
    try {
      const { data: res } = await axiosClient.put(`/competitions/update-unit/${id}`, data);
      return res;
    } catch (error) {
      console.log(error);
    }
  },

  async deleteSubUnits(id: string) {
    try {
      const { data } = await axiosClient.delete(`/competitions/delete-unit/${id}`);
      return data;
    } catch (error) {
      console.log(error);
    }
  }
};
