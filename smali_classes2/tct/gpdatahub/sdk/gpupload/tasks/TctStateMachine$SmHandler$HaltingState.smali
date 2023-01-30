.class Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler$HaltingState;
.super Ltct/gpdatahub/sdk/gpupload/tasks/State;
.source "TctStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HaltingState"
.end annotation


# instance fields
.field final synthetic this$0:Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;


# direct methods
.method private constructor <init>(Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;)V
    .locals 0

    .line 370
    iput-object p1, p0, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler$HaltingState;->this$0:Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;

    invoke-direct {p0}, Ltct/gpdatahub/sdk/gpupload/tasks/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$1;)V
    .locals 0

    .line 370
    invoke-direct {p0, p1}, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler$HaltingState;-><init>(Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;)V

    return-void
.end method


# virtual methods
.method public processMessage(Landroid/os/Message;)Z
    .locals 1

    .line 373
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler$HaltingState;->this$0:Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;

    invoke-static {v0}, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;->access$300(Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$SmHandler;)Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine;

    move-result-object v0

    invoke-virtual {v0, p1}, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine;->haltedProcessMessage(Landroid/os/Message;)V

    const/4 p1, 0x1

    return p1
.end method
