import { useState } from 'react';
import { CompetitionApi } from '~/api/competition-api';

export const useExportExcelRow = () => {
  const [loading, setLoading] = useState(false);

  const exportExcel = async (id: string, pageIndex: number, pageSize: number, fromDate: string, toDate: string) => {
    setLoading(true);
    try {
      await CompetitionApi.exportExcel(id, pageIndex, pageSize, fromDate, toDate);
    } catch (error) {
      console.error(error);
    } finally {
      setLoading(false);
    }
  };

  return { exportExcel, loading };
};
