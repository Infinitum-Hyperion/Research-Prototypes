part of xpress.mkproj;

final SystemGoals goals = SystemGoals(
  agreements: [
    ServiceLevelAgreement(
      description:
          'System must be resilient enough to recover from errors quickly',
      objectives: [
        ServiceLevelObjective(
          systemParameter: SystemParameter(
            featureId: 'max_downtime_duration_ms',
            elementId: getRandomString(),
            systemId: systemId,
          ),
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
