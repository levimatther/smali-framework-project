.class Lcom/android/incallui/BottomSheetHelper$3;
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

    .line 833
    iput-object p1, p0, Lcom/android/incallui/BottomSheetHelper$3;->this$0:Lcom/android/incallui/BottomSheetHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 836
    iget-object p1, p0, Lcom/android/incallui/BottomSheetHelper$3;->this$0:Lcom/android/incallui/BottomSheetHelper;

    invoke-static {p1}, Lcom/android/incallui/BottomSheetHelper;->access$100(Lcom/android/incallui/BottomSheetHelper;)Lcom/android/incallui/call/DialerCall;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/incallui/BottomSheetHelper;->access$300(Lcom/android/incallui/BottomSheetHelper;Lcom/android/incallui/call/DialerCall;)V

    return-void
.end method
