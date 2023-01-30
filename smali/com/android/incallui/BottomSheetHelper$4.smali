.class Lcom/android/incallui/BottomSheetHelper$4;
.super Ljava/lang/Object;
.source "BottomSheetHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/BottomSheetHelper;->displayCancelModifyCallOptions()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/BottomSheetHelper;


# direct methods
.method constructor <init>(Lcom/android/incallui/BottomSheetHelper;)V
    .locals 0

    .line 839
    iput-object p1, p0, Lcom/android/incallui/BottomSheetHelper$4;->this$0:Lcom/android/incallui/BottomSheetHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    const-string p1, "not cancel voice call upgrade to video"

    .line 842
    invoke-static {p0, p1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
