import { useQuery } from '@tanstack/react-query';
import { CompetitionApi } from '~/api/competition-api';

export const useCompetitions = () => {
  return useQuery({
    queryKey: ['competitions'],
    queryFn: () => CompetitionApi.getListCompetition()
  });
};
