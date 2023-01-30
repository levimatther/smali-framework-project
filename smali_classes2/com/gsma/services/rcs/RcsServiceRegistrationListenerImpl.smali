.class public Lcom/gsma/services/rcs/RcsServiceRegistrationListenerImpl;
.super Lcom/gsma/services/rcs/IRcsServiceRegistrationListener$Stub;
.source "RcsServiceRegistrationListenerImpl.java"


# static fields
.field private static final sLogger:Lcom/gsma/rcs/utils/logger/Logger;


# instance fields
.field private final mListener:Lcom/gsma/services/rcs/RcsServiceRegistrationListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "RcsServiceRegistrationListenerImpl"

    .line 29
    invoke-static {v0}, Lcom/gsma/rcs/utils/logger/Logger;->getLogger(Ljava/lang/String;)Lcom/gsma/rcs/utils/logger/Logger;

    move-result-object v0

    sput-object v0, Lcom/gsma/services/rcs/RcsServiceRegistrationListenerImpl;->sLogger:Lcom/gsma/rcs/utils/logger/Logger;

    return-void
.end method

.method constructor <init>(Lcom/gsma/services/rcs/RcsServiceRegistrationListener;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/gsma/services/rcs/IRcsServiceRegistrationListener$Stub;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/gsma/services/rcs/RcsServiceRegistrationListenerImpl;->mListener:Lcom/gsma/services/rcs/RcsServiceRegistrationListener;

    return-void
.end method


# virtual methods
.method public onServiceRegistered()V
    .locals 2

    .line 39
    sget-object v0, Lcom/gsma/services/rcs/RcsServiceRegistrationListenerImpl;->sLogger:Lcom/gsma/rcs/utils/logger/Logger;

    const-string v1, "onServiceRegistered"

    invoke-virtual {v0, v1}, Lcom/gsma/rcs/utils/logger/Logger;->error(Ljava/lang/String;)V

    .line 40
    iget-object v0, p0, Lcom/gsma/services/rcs/RcsServiceRegistrationListenerImpl;->mListener:Lcom/gsma/services/rcs/RcsServiceRegistrationListener;

    invoke-virtual {v0}, Lcom/gsma/services/rcs/RcsServiceRegistrationListener;->onServiceRegistered()V

    return-void
.end method

.method public onServiceUnregistered(I)V
    .locals 1

    .line 47
    :try_start_0
    invoke-static {p1}, Lcom/gsma/services/rcs/RcsServiceRegistration$ReasonCode;->valueOf(I)Lcom/gsma/services/rcs/RcsServiceRegistration$ReasonCode;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    iget-object v0, p0, Lcom/gsma/services/rcs/RcsServiceRegistrationListenerImpl;->mListener:Lcom/gsma/services/rcs/RcsServiceRegistrationListener;

    invoke-virtual {v0, p1}, Lcom/gsma/services/rcs/RcsServiceRegistrationListener;->onServiceUnregistered(Lcom/gsma/services/rcs/RcsServiceRegistration$ReasonCode;)V

    return-void

    :catch_0
    move-exception p1

    .line 54
    sget-object v0, Lcom/gsma/services/rcs/RcsServiceRegistrationListenerImpl;->sLogger:Lcom/gsma/rcs/utils/logger/Logger;

    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/gsma/rcs/utils/logger/Logger;->error(Ljava/lang/String;)V

    return-void
.end method
