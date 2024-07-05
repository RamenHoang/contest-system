import { useMutation } from '@tanstack/react-query';
import { message } from 'antd';
import { CompetitionApi } from '~/api/competition-api';
import { ICompetition } from '~/types';

export const useCreateCompetition = () => {
  return useMutation({
    mutationFn: (data: ICompetition) => CompetitionApi.createCompetition(data),

    onSuccess: () => {
      message.success('Bước 1 thành công');
    },

    onError: (err) => {
      message.error(err.message);
    }
  });
};
