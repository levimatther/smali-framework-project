.class public abstract Lcom/tct/cs/services/rcs/provisioning/ProvisioningListener;
.super Ljava/lang/Object;
.source "ProvisioningListener.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract onServiceEndUserAckResponse(Lcom/tct/cs/services/rcs/provisioning/TermsAckResponse;)V
.end method

.method public abstract onServiceEndUserConfirmationRequest(Lcom/tct/cs/services/rcs/provisioning/TermsConfirmationRequest;)V
.end method

.method public abstract onServiceEndUserNotificationRequest(Lcom/tct/cs/services/rcs/provisioning/TermsNotificationRequest;)V
.end method
