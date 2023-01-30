.class Lcom/android/incallui/Auto_call_Activity$2;
.super Ljava/lang/Object;
.source "Auto_call_Activity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/Auto_call_Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/Auto_call_Activity;

.field final synthetic val$tctDialog:Landroid/app/TctDialog;


# direct methods
.method constructor <init>(Lcom/android/incallui/Auto_call_Activity;Landroid/app/TctDialog;)V
    .locals 0

    .line 122
    iput-object p1, p0, Lcom/android/incallui/Auto_call_Activity$2;->this$0:Lcom/android/incallui/Auto_call_Activity;

    iput-object p2, p0, Lcom/android/incallui/Auto_call_Activity$2;->val$tctDialog:Landroid/app/TctDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 125
    iget-object p1, p0, Lcom/android/incallui/Auto_call_Activity$2;->val$tctDialog:Landroid/app/TctDialog;

    invoke-virtual {p1}, Landroid/app/TctDialog;->dismiss()V

    return-void
.end method
