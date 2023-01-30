.class Lcom/android/incallui/PictureModeHelper$3;
.super Ljava/lang/Object;
.source "PictureModeHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/PictureModeHelper;->setDismissListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/PictureModeHelper;


# direct methods
.method constructor <init>(Lcom/android/incallui/PictureModeHelper;)V
    .locals 0

    .line 239
    iput-object p1, p0, Lcom/android/incallui/PictureModeHelper$3;->this$0:Lcom/android/incallui/PictureModeHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .line 242
    iget-object p1, p0, Lcom/android/incallui/PictureModeHelper$3;->this$0:Lcom/android/incallui/PictureModeHelper;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/incallui/PictureModeHelper;->access$202(Lcom/android/incallui/PictureModeHelper;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    return-void
.end method
