.class public final Lcom/android/dialer/app/calllog/PhoneCallDetailsViews;
.super Ljava/lang/Object;
.source "PhoneCallDetailsViews.java"


# instance fields
.field public final callAccountIcon:Landroid/widget/ImageView;

.field public final callAccountLabel:Landroid/widget/TextView;

.field public final callCount:Landroid/widget/TextView;

.field public final callLocationAndDate:Landroid/widget/TextView;

.field public final callLogType:Landroid/widget/ImageView;

.field public final callTypeIcons:Lcom/android/dialer/calllogutils/CallTypeIconsView;

.field public final callTypeRtt:Landroid/widget/ImageView;

.field public final callTypeView:Landroid/view/View;

.field public final nameView:Landroid/widget/TextView;

.field public final voicemailTranscriptionView:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/widget/TextView;Landroid/view/View;Lcom/android/dialer/calllogutils/CallTypeIconsView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/ImageView;)V
    .locals 0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/android/dialer/app/calllog/PhoneCallDetailsViews;->nameView:Landroid/widget/TextView;

    .line 58
    iput-object p2, p0, Lcom/android/dialer/app/calllog/PhoneCallDetailsViews;->callTypeView:Landroid/view/View;

    .line 59
    iput-object p3, p0, Lcom/android/dialer/app/calllog/PhoneCallDetailsViews;->callTypeIcons:Lcom/android/dialer/calllogutils/CallTypeIconsView;

    .line 60
    iput-object p4, p0, Lcom/android/dialer/app/calllog/PhoneCallDetailsViews;->callLocationAndDate:Landroid/widget/TextView;

    .line 61
    iput-object p5, p0, Lcom/android/dialer/app/calllog/PhoneCallDetailsViews;->voicemailTranscriptionView:Landroid/widget/TextView;

    .line 62
    iput-object p6, p0, Lcom/android/dialer/app/calllog/PhoneCallDetailsViews;->callAccountIcon:Landroid/widget/ImageView;

    .line 63
    iput-object p7, p0, Lcom/android/dialer/app/calllog/PhoneCallDetailsViews;->callAccountLabel:Landroid/widget/TextView;

    .line 64
    iput-object p8, p0, Lcom/android/dialer/app/calllog/PhoneCallDetailsViews;->callCount:Landroid/widget/TextView;

    .line 65
    iput-object p9, p0, Lcom/android/dialer/app/calllog/PhoneCallDetailsViews;->callTypeRtt:Landroid/widget/ImageView;

    .line 66
    iput-object p10, p0, Lcom/android/dialer/app/calllog/PhoneCallDetailsViews;->callLogType:Landroid/widget/ImageView;

    return-void
.end method

.method public static createForTest(Landroid/content/Context;)Lcom/android/dialer/app/calllog/PhoneCallDetailsViews;
    .locals 12

    .line 80
    new-instance v11, Lcom/android/dialer/app/calllog/PhoneCallDetailsViews;

    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/view/View;

    invoke-direct {v2, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v3, Lcom/android/dialer/calllogutils/CallTypeIconsView;

    invoke-direct {v3, p0}, Lcom/android/dialer/calllogutils/CallTypeIconsView;-><init>(Landroid/content/Context;)V

    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v6, Landroid/widget/ImageView;

    invoke-direct {v6, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance v7, Landroid/widget/TextView;

    invoke-direct {v7, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v8, Landroid/widget/TextView;

    invoke-direct {v8, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v9, Landroid/widget/ImageView;

    invoke-direct {v9, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance v10, Landroid/widget/ImageView;

    invoke-direct {v10, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    move-object v0, v11

    invoke-direct/range {v0 .. v10}, Lcom/android/dialer/app/calllog/PhoneCallDetailsViews;-><init>(Landroid/widget/TextView;Landroid/view/View;Lcom/android/dialer/calllogutils/CallTypeIconsView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/ImageView;)V

    return-object v11
.end method

.method public static fromView(Landroid/view/View;)Lcom/android/dialer/app/calllog/PhoneCallDetailsViews;
    .locals 12

    .line 100
    new-instance v11, Lcom/android/dialer/app/calllog/PhoneCallDetailsViews;

    const v0, 0x7f090216

    .line 101
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/widget/TextView;

    const v0, 0x7f0900ad

    .line 102
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const v0, 0x7f0900ae

    .line 103
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/android/dialer/calllogutils/CallTypeIconsView;

    const v0, 0x7f09009a

    .line 104
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/widget/TextView;

    const v0, 0x7f09035d

    .line 105
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/widget/TextView;

    const v0, 0x7f090085

    .line 106
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/widget/ImageView;

    const v0, 0x7f090086

    .line 107
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/widget/TextView;

    const v0, 0x7f09009d

    .line 109
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/widget/TextView;

    const v0, 0x7f0900b1

    .line 110
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/widget/ImageView;

    const v0, 0x7f0900a7

    .line 111
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    move-object v10, p0

    check-cast v10, Landroid/widget/ImageView;

    move-object v0, v11

    invoke-direct/range {v0 .. v10}, Lcom/android/dialer/app/calllog/PhoneCallDetailsViews;-><init>(Landroid/widget/TextView;Landroid/view/View;Lcom/android/dialer/calllogutils/CallTypeIconsView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/ImageView;)V

    return-object v11
.end method
