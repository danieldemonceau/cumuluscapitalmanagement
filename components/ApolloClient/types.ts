export interface Exchange {
  id: number;
  name: string;
  city: string;
}

export interface Exchanges {
  exchanges: Exchange[];
}

export interface ExchangeVars {
  name: string;
}
