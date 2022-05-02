(* 駅名の漢字、かな、ローマ字、所属する路線名を表すデータ *)
type ekimei_t = {
    kanji: string;
    kana: string;
    romaji: string;
    shozoku: string;
}