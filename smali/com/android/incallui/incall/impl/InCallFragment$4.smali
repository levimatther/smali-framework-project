.class Lcom/android/incallui/incall/impl/InCallFragment$4;
.super Ljava/lang/Object;
.source "InCallFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/incall/impl/InCallFragment;->showRouteDialog(Ljava/util/ArrayList;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/incall/impl/InCallFragment;

.field final synthetic val$type:I


# direct methods
.method constructor <init>(Lcom/android/incallui/incall/impl/InCallFragment;I)V
    .locals 0

    .line 1201
    iput-object p1, p0, Lcom/android/incallui/incall/impl/InCallFragment$4;->this$0:Lcom/android/incallui/incall/impl/InCallFragment;

    iput p2, p0, Lcom/android/incallui/incall/impl/InCallFragment$4;->val$type:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 1204
    iget-object p1, p0, Lcom/android/incallui/incall/impl/InCallFragment$4;->this$0:Lcom/android/incallui/incall/impl/InCallFragment;

    const p4, 0x7f09025e

    invoke-virtual {p2, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RadioButton;

    invoke-static {p1, p2}, Lcom/android/incallui/incall/impl/InCallFragment;->access$802(Lcom/android/incallui/incall/impl/InCallFragment;Landroid/widget/RadioButton;)Landroid/widget/RadioButton;

    .line 1205
    iget-object p1, p0, Lcom/android/incallui/incall/impl/InCallFragment$4;->this$0:Lcom/android/incallui/incall/impl/InCallFragment;

    invoke-static {p1}, Lcom/android/incallui/incall/impl/InCallFragment;->access$800(Lcom/android/incallui/incall/impl/InCallFragment;)Landroid/widget/RadioButton;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 1206
    iget-object p1, p0, Lcom/android/incallui/incall/impl/InCallFragment$4;->this$0:Lcom/android/incallui/incall/impl/InCallFragment;

    iget p1, p1, Lcom/android/incallui/incall/impl/InCallFragment;->lastitem:I

    const/4 p4, -0x1

    if-eq p1, p4, :cond_0

    iget-object p1, p0, Lcom/android/incallui/incall/impl/InCallFragment$4;->this$0:Lcom/android/incallui/incall/impl/InCallFragment;

    iget p1, p1, Lcom/android/incallui/incall/impl/InCallFragment;->lastitem:I

    if-eq p1, p3, :cond_0

    .line 1207
    sget-object p1, Lcom/android/incallui/incall/impl/InCallFragment;->oldrb:Landroid/widget/RadioButton;

    if-eqz p1, :cond_0

    .line 1208
    sget-object p1, Lcom/android/incallui/incall/impl/InCallFragment;->oldrb:Landroid/widget/RadioButton;

    const/4 p5, 0x0

    invoke-virtual {p1, p5}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 1211
    :cond_0
    iget-object p1, p0, Lcom/android/incallui/incall/impl/InCallFragment$4;->this$0:Lcom/android/incallui/incall/impl/InCallFragment;

    invoke-static {p1}, Lcom/android/incallui/incall/impl/InCallFragment;->access$800(Lcom/android/incallui/incall/impl/InCallFragment;)Landroid/widget/RadioButton;

    move-result-object p1

    sput-object p1, Lcom/android/incallui/incall/impl/InCallFragment;->oldrb:Landroid/widget/RadioButton;

    .line 1212
    iget-object p1, p0, Lcom/android/incallui/incall/impl/InCallFragment$4;->this$0:Lcom/android/incallui/incall/impl/InCallFragment;

    iput p3, p1, Lcom/android/incallui/incall/impl/InCallFragment;->lastitem:I

    .line 1215
    iget p1, p0, Lcom/android/incallui/incall/impl/InCallFragment$4;->val$type:I

    const p5, 0x7f110491

    const v0, 0x7f11048e

    const/16 v1, 0x8

    const v2, 0x7f110490

    const/4 v3, 0x2

    if-ne p1, p2, :cond_3

    if-nez p3, :cond_1

    .line 1218
    iget-object p1, p0, Lcom/android/incallui/incall/impl/InCallFragment$4;->this$0:Lcom/android/incallui/incall/impl/InCallFragment;

    invoke-static {p1, v3}, Lcom/android/incallui/incall/impl/InCallFragment;->access$902(Lcom/android/incallui/incall/impl/InCallFragment;I)I

    :goto_0
    move p5, v0

    goto :goto_2

    :cond_1
    if-ne p3, v3, :cond_2

    const p5, 0x7f11048f

    .line 1222
    iget-object p1, p0, Lcom/android/incallui/incall/impl/InCallFragment$4;->this$0:Lcom/android/incallui/incall/impl/InCallFragment;

    invoke-static {p1, p2}, Lcom/android/incallui/incall/impl/InCallFragment;->access$902(Lcom/android/incallui/incall/impl/InCallFragment;I)I

    goto :goto_2

    .line 1226
    :cond_2
    iget-object p1, p0, Lcom/android/incallui/incall/impl/InCallFragment$4;->this$0:Lcom/android/incallui/incall/impl/InCallFragment;

    invoke-static {p1, v1}, Lcom/android/incallui/incall/impl/InCallFragment;->access$902(Lcom/android/incallui/incall/impl/InCallFragment;I)I

    goto :goto_1

    :cond_3
    const/4 v4, 0x4

    if-ne p1, v3, :cond_5

    if-nez p3, :cond_4

    .line 1231
    iget-object p1, p0, Lcom/android/incallui/incall/impl/InCallFragment$4;->this$0:Lcom/android/incallui/incall/impl/InCallFragment;

    invoke-static {p1, v4}, Lcom/android/incallui/incall/impl/InCallFragment;->access$902(Lcom/android/incallui/incall/impl/InCallFragment;I)I

    goto :goto_2

    .line 1234
    :cond_4
    iget-object p1, p0, Lcom/android/incallui/incall/impl/InCallFragment$4;->this$0:Lcom/android/incallui/incall/impl/InCallFragment;

    invoke-static {p1, v1}, Lcom/android/incallui/incall/impl/InCallFragment;->access$902(Lcom/android/incallui/incall/impl/InCallFragment;I)I

    :goto_1
    move p5, v2

    goto :goto_2

    :cond_5
    const/4 v5, 0x3

    if-ne p1, v5, :cond_8

    if-nez p3, :cond_6

    .line 1239
    iget-object p1, p0, Lcom/android/incallui/incall/impl/InCallFragment$4;->this$0:Lcom/android/incallui/incall/impl/InCallFragment;

    invoke-static {p1, v3}, Lcom/android/incallui/incall/impl/InCallFragment;->access$902(Lcom/android/incallui/incall/impl/InCallFragment;I)I

    goto :goto_0

    :cond_6
    if-ne p3, p2, :cond_7

    .line 1242
    iget-object p1, p0, Lcom/android/incallui/incall/impl/InCallFragment$4;->this$0:Lcom/android/incallui/incall/impl/InCallFragment;

    invoke-static {p1, v4}, Lcom/android/incallui/incall/impl/InCallFragment;->access$902(Lcom/android/incallui/incall/impl/InCallFragment;I)I

    goto :goto_2

    .line 1245
    :cond_7
    iget-object p1, p0, Lcom/android/incallui/incall/impl/InCallFragment$4;->this$0:Lcom/android/incallui/incall/impl/InCallFragment;

    invoke-static {p1, v1}, Lcom/android/incallui/incall/impl/InCallFragment;->access$902(Lcom/android/incallui/incall/impl/InCallFragment;I)I

    goto :goto_1

    :cond_8
    move p5, p4

    :goto_2
    if-eq p5, p4, :cond_9

    .line 1249
    iget-object p1, p0, Lcom/android/incallui/incall/impl/InCallFragment$4;->this$0:Lcom/android/incallui/incall/impl/InCallFragment;

    invoke-static {p1}, Lcom/android/incallui/incall/impl/InCallFragment;->access$1000(Lcom/android/incallui/incall/impl/InCallFragment;)Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 1250
    iget-object p1, p0, Lcom/android/incallui/incall/impl/InCallFragment$4;->this$0:Lcom/android/incallui/incall/impl/InCallFragment;

    invoke-static {p1}, Lcom/android/incallui/incall/impl/InCallFragment;->access$1000(Lcom/android/incallui/incall/impl/InCallFragment;)Landroid/content/Context;

    move-result-object p1

    iget-object p3, p0, Lcom/android/incallui/incall/impl/InCallFragment$4;->this$0:Lcom/android/incallui/incall/impl/InCallFragment;

    invoke-static {p3}, Lcom/android/incallui/incall/impl/InCallFragment;->access$1000(Lcom/android/incallui/incall/impl/InCallFragment;)Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3, p5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 1253
    :cond_9
    invoke-static {}, Lcom/android/incallui/call/TelecomAdapter;->getInstance()Lcom/android/incallui/call/TelecomAdapter;

    move-result-object p1

    iget-object p2, p0, Lcom/android/incallui/incall/impl/InCallFragment$4;->this$0:Lcom/android/incallui/incall/impl/InCallFragment;

    invoke-static {p2}, Lcom/android/incallui/incall/impl/InCallFragment;->access$900(Lcom/android/incallui/incall/impl/InCallFragment;)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/android/incallui/call/TelecomAdapter;->setAudioRoute(I)V

    .line 1254
    iget-object p1, p0, Lcom/android/incallui/incall/impl/InCallFragment$4;->this$0:Lcom/android/incallui/incall/impl/InCallFragment;

    invoke-static {p1}, Lcom/android/incallui/incall/impl/InCallFragment;->access$1100(Lcom/android/incallui/incall/impl/InCallFragment;)Landroid/app/Dialog;

    move-result-object p1

    if-eqz p1, :cond_a

    iget-object p1, p0, Lcom/android/incallui/incall/impl/InCallFragment$4;->this$0:Lcom/android/incallui/incall/impl/InCallFragment;

    invoke-static {p1}, Lcom/android/incallui/incall/impl/InCallFragment;->access$1100(Lcom/android/incallui/incall/impl/InCallFragment;)Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_a

    .line 1255
    iget-object p1, p0, Lcom/android/incallui/incall/impl/InCallFragment$4;->this$0:Lcom/android/incallui/incall/impl/InCallFragment;

    invoke-static {p1}, Lcom/android/incallui/incall/impl/InCallFragment;->access$1100(Lcom/android/incallui/incall/impl/InCallFragment;)Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    :cond_a
    return-void
.end method
