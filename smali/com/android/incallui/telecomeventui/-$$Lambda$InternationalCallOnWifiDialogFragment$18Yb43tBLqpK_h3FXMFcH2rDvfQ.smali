.class public final synthetic Lcom/android/incallui/telecomeventui/-$$Lambda$InternationalCallOnWifiDialogFragment$18Yb43tBLqpK_h3FXMFcH2rDvfQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/incallui/telecomeventui/InternationalCallOnWifiDialogFragment;

.field public final synthetic f$1:Landroid/content/SharedPreferences;

.field public final synthetic f$2:Landroid/widget/CheckBox;


# direct methods
.method public synthetic constructor <init>(Lcom/android/incallui/telecomeventui/InternationalCallOnWifiDialogFragment;Landroid/content/SharedPreferences;Landroid/widget/CheckBox;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/incallui/telecomeventui/-$$Lambda$InternationalCallOnWifiDialogFragment$18Yb43tBLqpK_h3FXMFcH2rDvfQ;->f$0:Lcom/android/incallui/telecomeventui/InternationalCallOnWifiDialogFragment;

    iput-object p2, p0, Lcom/android/incallui/telecomeventui/-$$Lambda$InternationalCallOnWifiDialogFragment$18Yb43tBLqpK_h3FXMFcH2rDvfQ;->f$1:Landroid/content/SharedPreferences;

    iput-object p3, p0, Lcom/android/incallui/telecomeventui/-$$Lambda$InternationalCallOnWifiDialogFragment$18Yb43tBLqpK_h3FXMFcH2rDvfQ;->f$2:Landroid/widget/CheckBox;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcom/android/incallui/telecomeventui/-$$Lambda$InternationalCallOnWifiDialogFragment$18Yb43tBLqpK_h3FXMFcH2rDvfQ;->f$0:Lcom/android/incallui/telecomeventui/InternationalCallOnWifiDialogFragment;

    iget-object v1, p0, Lcom/android/incallui/telecomeventui/-$$Lambda$InternationalCallOnWifiDialogFragment$18Yb43tBLqpK_h3FXMFcH2rDvfQ;->f$1:Landroid/content/SharedPreferences;

    iget-object v2, p0, Lcom/android/incallui/telecomeventui/-$$Lambda$InternationalCallOnWifiDialogFragment$18Yb43tBLqpK_h3FXMFcH2rDvfQ;->f$2:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/android/incallui/telecomeventui/InternationalCallOnWifiDialogFragment;->lambda$onCreateDialog$0$InternationalCallOnWifiDialogFragment(Landroid/content/SharedPreferences;Landroid/widget/CheckBox;Landroid/content/DialogInterface;I)V

    return-void
.end method
