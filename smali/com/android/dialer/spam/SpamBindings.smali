.class public interface abstract Lcom/android/dialer/spam/SpamBindings;
.super Ljava/lang/Object;
.source "SpamBindings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dialer/spam/SpamBindings$Listener;
    }
.end annotation


# virtual methods
.method public abstract checkGlobalSpamListStatus(Ljava/lang/String;Ljava/lang/String;Lcom/android/dialer/spam/SpamBindings$Listener;)V
.end method

.method public abstract checkSpamStatus(Ljava/lang/String;Ljava/lang/String;Lcom/android/dialer/spam/SpamBindings$Listener;)V
.end method

.method public abstract checkSpamStatusSynchronous(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract checkUserMarkedNonSpamStatus(Ljava/lang/String;Ljava/lang/String;Lcom/android/dialer/spam/SpamBindings$Listener;)V
.end method

.method public abstract checkUserMarkedSpamStatus(Ljava/lang/String;Ljava/lang/String;Lcom/android/dialer/spam/SpamBindings$Listener;)V
.end method

.method public abstract isDialogEnabledForSpamNotification()Z
.end method

.method public abstract isDialogReportSpamCheckedByDefault()Z
.end method

.method public abstract isSpamEnabled()Z
.end method

.method public abstract isSpamNotificationEnabled()Z
.end method

.method public abstract percentOfNonSpamNotificationsToShow()I
.end method

.method public abstract percentOfSpamNotificationsToShow()I
.end method

.method public abstract reportNotSpamFromAfterCallNotification(Ljava/lang/String;Ljava/lang/String;ILcom/android/dialer/logging/ReportingLocation$Type;Lcom/android/dialer/logging/ContactLookupResult$Type;)V
.end method

.method public abstract reportNotSpamFromCallHistory(Ljava/lang/String;Ljava/lang/String;ILcom/android/dialer/logging/ReportingLocation$Type;Lcom/android/dialer/logging/ContactSource$Type;)V
.end method

.method public abstract reportSpamFromAfterCallNotification(Ljava/lang/String;Ljava/lang/String;ILcom/android/dialer/logging/ReportingLocation$Type;Lcom/android/dialer/logging/ContactLookupResult$Type;)V
.end method

.method public abstract reportSpamFromCallHistory(Ljava/lang/String;Ljava/lang/String;ILcom/android/dialer/logging/ReportingLocation$Type;Lcom/android/dialer/logging/ContactSource$Type;)V
.end method
