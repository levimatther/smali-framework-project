.class Lcom/android/incallui/video/impl/CameraPermissionDialogFragment$1;
.super Ljava/lang/Object;
.source "CameraPermissionDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/video/impl/CameraPermissionDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/video/impl/CameraPermissionDialogFragment;


# direct methods
.method constructor <init>(Lcom/android/incallui/video/impl/CameraPermissionDialogFragment;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/android/incallui/video/impl/CameraPermissionDialogFragment$1;->this$0:Lcom/android/incallui/video/impl/CameraPermissionDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 59
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
