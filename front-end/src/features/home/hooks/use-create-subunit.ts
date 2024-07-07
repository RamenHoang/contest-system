import { useMutation } from '@tanstack/react-query';
import { message } from 'antd';
import { useParams } from 'react-router-dom';
import { UnitApi } from '~/api/unit-api';
import { useInvalidateSubUnits } from '~/features/home/hooks/use-subunits';
import { ICreateSubUnits } from '~/types';

export const useCreateSubUnit = () => {
  const invalidateSubUnits = useInvalidateSubUnits();
  const { id } = useParams();

  return useMutation({
    mutationFn: (data: ICreateSubUnits) => UnitApi.createSubUnits(data, id as string),

    onSuccess: () => {
      invalidateSubUnits();
      message.success('Thêm đơn vị thành công');
    },

    onError: (error) => {
      console.log(error);
    }
  });
};
