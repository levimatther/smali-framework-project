.class Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine$UploadState;
.super Ltct/gpdatahub/sdk/gpupload/tasks/State;
.source "UploadStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UploadState"
.end annotation


# static fields
.field protected static final DETAIL_STATE_EXECUTING:I = 0x3

.field protected static final DETAIL_STATE_EXECUTING_INFO:Ljava/lang/String; = "executing"

.field protected static final DETAIL_STATE_FAILED:I = 0x5

.field protected static final DETAIL_STATE_FAILED_INFO:Ljava/lang/String; = "failed"

.field protected static final DETAIL_STATE_FINISHED:I = 0x4

.field protected static final DETAIL_STATE_FINISHED_INFO:Ljava/lang/String; = "finished"

.field protected static final DETAIL_STATE_START:I = 0x1

.field protected static final DETAIL_STATE_START_INFO:Ljava/lang/String; = "start"

.field protected static final DETAIL_STATE_WAITTING:I = 0x2

.field protected static final DETAIL_STATE_WAITTING_INFO:Ljava/lang/String; = "waiting"


# instance fields
.field private detailState:I

.field final synthetic this$0:Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;


# direct methods
.method private constructor <init>(Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;)V
    .locals 0

    .line 909
    iput-object p1, p0, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine$UploadState;->this$0:Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;

    invoke-direct {p0}, Ltct/gpdatahub/sdk/gpupload/tasks/State;-><init>()V

    const/4 p1, 0x1

    .line 920
    iput p1, p0, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine$UploadState;->detailState:I

    return-void
.end method

.method synthetic constructor <init>(Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine$1;)V
    .locals 0

    .line 909
    invoke-direct {p0, p1}, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine$UploadState;-><init>(Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;)V

    return-void
.end method

.method private getDetailStateString()Ljava/lang/String;
    .locals 2

    .line 928
    invoke-virtual {p0}, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine$UploadState;->getDetailState()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    const-string v0, "start"

    return-object v0

    :cond_0
    const-string v0, "failed"

    return-object v0

    :cond_1
    const-string v0, "finished"

    return-object v0

    :cond_2
    const-string v0, "executing"

    return-object v0

    :cond_3
    const-string v0, "waiting"

    return-object v0
.end method


# virtual methods
.method public getDetailState()I
    .locals 1

    .line 924
    iget v0, p0, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine$UploadState;->detailState:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .line 951
    invoke-super {p0}, Ltct/gpdatahub/sdk/gpupload/tasks/State;->getName()Ljava/lang/String;

    move-result-object v0

    .line 952
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "-"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine$UploadState;->getDetailStateString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setDetailState(I)V
    .locals 0

    .line 946
    iput p1, p0, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine$UploadState;->detailState:I

    return-void
.end method
