import axiosClient from './axios-client';

export const AuthApi = {
  async loginGoogle(accessToken: string) {
    try {
      const { data } = await axiosClient.post('/auth/login-google', {
        token: accessToken
      });
      console.log(data);
      return data;
    } catch (error) {
      console.log(error);
    }
  },

  async loginAdmin(username: string, password: string) {
    try {
      const { data } = await axiosClient.post('/auth/login', {
        username,
        password
      });
      return data;
    } catch (error) {
      console.log(error);
    }
  },
  logoutGoogle() {
    return axiosClient.get('/user/logout', {
      headers: {
        Authorization:
          'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6IjY2NWIwZWY0NzZiYzY5YWU4YjkxYThmNCIsImVtYWlsIjoiaW1wb3NzaWJsZUBnbWFpbC5jb20iLCJuYW1lIjoiaW1wb3NzaWJsZSIsInJvbGUiOiJ1c2VyIiwiaWF0IjoxNzE3MjQzNjU2LCJleHAiOjE3MTc4NDg0NTZ9.4EdfLcG7Yh5f2KnZe4XJjlaRaZqwZRTw-CnduZdGx_Q'
      }
    });
  }
};
