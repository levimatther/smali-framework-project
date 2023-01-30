.class public final Lcom/android/incallui/incall/impl/ButtonController$Controllers;
.super Ljava/lang/Object;
.source "ButtonController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/incall/impl/ButtonController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Controllers"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/incallui/incall/impl/CheckableLabeledButton;)V
    .locals 0

    .line 57
    invoke-static {p0}, Lcom/android/incallui/incall/impl/ButtonController$Controllers;->resetButton(Lcom/android/incallui/incall/impl/CheckableLabeledButton;)V

    return-void
.end method

.method private static resetButton(Lcom/android/incallui/incall/impl/CheckableLabeledButton;)V
    .locals 1

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 61
    invoke-virtual {p0, v0}, Lcom/android/incallui/incall/impl/CheckableLabeledButton;->setOnCheckedChangeListener(Lcom/android/incallui/incall/impl/CheckableLabeledButton$OnCheckedChangeListener;)V

    .line 62
    invoke-virtual {p0, v0}, Lcom/android/incallui/incall/impl/CheckableLabeledButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method
