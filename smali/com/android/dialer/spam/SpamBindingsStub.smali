.class public Lcom/android/dialer/spam/SpamBindingsStub;
.super Ljava/lang/Object;
.source "SpamBindingsStub.java"

# interfaces
.implements Lcom/android/dialer/spam/SpamBindings;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public checkGlobalSpamListStatus(Ljava/lang/String;Ljava/lang/String;Lcom/android/dialer/spam/SpamBindings$Listener;)V
    .locals 0

    const/4 p1, 0x0

    .line 73
    invoke-interface {p3, p1}, Lcom/android/dialer/spam/SpamBindings$Listener;->onComplete(Z)V

    return-void
.end method

.method public checkSpamStatus(Ljava/lang/String;Ljava/lang/String;Lcom/android/dialer/spam/SpamBindings$Listener;)V
    .locals 0

    const/4 p1, 0x0

    .line 58
    invoke-interface {p3, p1}, Lcom/android/dialer/spam/SpamBindings$Listener;->onComplete(Z)V

    return-void
.end method

.method public checkSpamStatusSynchronous(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public checkUserMarkedNonSpamStatus(Ljava/lang/String;Ljava/lang/String;Lcom/android/dialer/spam/SpamBindings$Listener;)V
    .locals 0

    const/4 p1, 0x0

    .line 63
    invoke-interface {p3, p1}, Lcom/android/dialer/spam/SpamBindings$Listener;->onComplete(Z)V

    return-void
.end method

.method public checkUserMarkedSpamStatus(Ljava/lang/String;Ljava/lang/String;Lcom/android/dialer/spam/SpamBindings$Listener;)V
    .locals 0

    const/4 p1, 0x0

    .line 68
    invoke-interface {p3, p1}, Lcom/android/dialer/spam/SpamBindings$Listener;->onComplete(Z)V

    return-void
.end method

.method public isDialogEnabledForSpamNotification()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isDialogReportSpamCheckedByDefault()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isSpamEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isSpamNotificationEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public percentOfNonSpamNotificationsToShow()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public percentOfSpamNotificationsToShow()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public reportNotSpamFromAfterCallNotification(Ljava/lang/String;Ljava/lang/String;ILcom/android/dialer/logging/ReportingLocation$Type;Lcom/android/dialer/logging/ContactLookupResult$Type;)V
    .locals 0

    return-void
.end method

.method public reportNotSpamFromCallHistory(Ljava/lang/String;Ljava/lang/String;ILcom/android/dialer/logging/ReportingLocation$Type;Lcom/android/dialer/logging/ContactSource$Type;)V
    .locals 0

    return-void
.end method

.method public reportSpamFromAfterCallNotification(Ljava/lang/String;Ljava/lang/String;ILcom/android/dialer/logging/ReportingLocation$Type;Lcom/android/dialer/logging/ContactLookupResult$Type;)V
    .locals 0

    return-void
.end method

.method public reportSpamFromCallHistory(Ljava/lang/String;Ljava/lang/String;ILcom/android/dialer/logging/ReportingLocation$Type;Lcom/android/dialer/logging/ContactSource$Type;)V
    .locals 0

    return-void
.end method
