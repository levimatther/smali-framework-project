.class final Lcom/android/incallui/video/impl/VideoCallFragment$11;
.super Ljava/lang/Object;
.source "VideoCallFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/video/impl/VideoCallFragment;->animateSetVisibility(Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$view:Landroid/view/View;

.field final synthetic val$visibility:I


# direct methods
.method constructor <init>(Landroid/view/View;I)V
    .locals 0

    .line 1550
    iput-object p1, p0, Lcom/android/incallui/video/impl/VideoCallFragment$11;->val$view:Landroid/view/View;

    iput p2, p0, Lcom/android/incallui/video/impl/VideoCallFragment$11;->val$visibility:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1553
    iget-object v0, p0, Lcom/android/incallui/video/impl/VideoCallFragment$11;->val$view:Landroid/view/View;

    iget v1, p0, Lcom/android/incallui/video/impl/VideoCallFragment$11;->val$visibility:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
