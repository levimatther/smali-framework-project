.class public Lcom/android/manager/OperatorManager;
.super Ljava/lang/Object;
.source "OperatorManager.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/android/operatorutils/IOperatorManager;
    .locals 1

    .line 9
    invoke-static {}, Lcom/android/operatorutils/OpCustomizationFactoryBase;->getOpFactory()Lcom/android/operatorutils/IOperatorManager;

    move-result-object v0

    return-object v0
.end method
