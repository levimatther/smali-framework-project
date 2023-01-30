.class Lcom/android/incallui/video/impl/VideoCallFragment$7;
.super Ljava/lang/Object;
.source "VideoCallFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/video/impl/VideoCallFragment;->exitFullscreenMode()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/video/impl/VideoCallFragment;


# direct methods
.method constructor <init>(Lcom/android/incallui/video/impl/VideoCallFragment;)V
    .locals 0

    .line 491
    iput-object p1, p0, Lcom/android/incallui/video/impl/VideoCallFragment$7;->this$0:Lcom/android/incallui/video/impl/VideoCallFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 494
    iget-object v0, p0, Lcom/android/incallui/video/impl/VideoCallFragment$7;->this$0:Lcom/android/incallui/video/impl/VideoCallFragment;

    invoke-static {v0}, Lcom/android/incallui/video/impl/VideoCallFragment;->access$700(Lcom/android/incallui/video/impl/VideoCallFragment;)Lcom/android/incallui/contactgrid/ContactGridManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/contactgrid/ContactGridManager;->show()V

    return-void
.end method
