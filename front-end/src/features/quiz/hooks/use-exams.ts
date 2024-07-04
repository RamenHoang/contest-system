import { useQuery } from '@tanstack/react-query';
import { ExamApi } from '~/api/exam-api';

export const useExams = () => {
  return useQuery({
    queryKey: ['exams'],
    queryFn: () => ExamApi.getExams()
  });
};
