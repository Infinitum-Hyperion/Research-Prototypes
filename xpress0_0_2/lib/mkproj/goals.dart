part of xpress.mkproj;

final SystemGoals goals = SystemGoals(
  agreements: [
    ServiceLevelAgreement(
      description:
          'System must be resilient enough to recover from errors quickly',
      objectives: [
        ServiceLevelObjective<int>(
          systemParameter: SystemParameter(),
          targetValue: 2000,
          elementId: getRandomString(),
          systemId: systemId,
        ),
      ],
      elementId: getRandomString(),
      systemId: systemId,
    ),
  ],
  elementId: getRandomString(),
  systemId: systemId,
);
