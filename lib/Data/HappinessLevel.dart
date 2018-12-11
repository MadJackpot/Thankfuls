enum HappinessLevel {
  VeryHappy,
  Happy,
  SoSo,
  NotHappy,
  VeryNotHappy
}

String happinessLevelAsString(HappinessLevel happinessLevel) {
  switch (happinessLevel) {
    case HappinessLevel.VeryHappy:
      return "Very happy";
      break;
    case HappinessLevel.Happy:
      return "Happy";
      break;
    case HappinessLevel.SoSo:
      return "So so...";
      break;
    case HappinessLevel.NotHappy:
      return "Not happy";
      break;
    case HappinessLevel.VeryNotHappy:
      return "Very not happy";
      break;
  }

  return "";
}
