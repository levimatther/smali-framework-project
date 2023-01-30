.class abstract enum Lcom/android/incallui/answer/impl/AnswerFragment$SecondaryBehavior;
.super Ljava/lang/Enum;
.source "AnswerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/answer/impl/AnswerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x440a
    name = "SecondaryBehavior"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/incallui/answer/impl/AnswerFragment$SecondaryBehavior;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/incallui/answer/impl/AnswerFragment$SecondaryBehavior;

.field public static final enum ANSWER_AND_RELEASE:Lcom/android/incallui/answer/impl/AnswerFragment$SecondaryBehavior;

.field public static final enum ANSWER_VIDEO_AS_AUDIO:Lcom/android/incallui/answer/impl/AnswerFragment$SecondaryBehavior;

.field public static final enum REJECT_WITH_SMS:Lcom/android/incallui/answer/impl/AnswerFragment$SecondaryBehavior;


# instance fields
.field public final accessibilityLabel:I

.field public final contentDescription:I

.field public final hintText:I

.field public final icon:I


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 394
    new-instance v7, Lcom/android/incallui/answer/impl/AnswerFragment$SecondaryBehavior$1;

    const-string v1, "REJECT_WITH_SMS"

    const/4 v2, 0x0

    const v3, 0x7f0801d3

    const v4, 0x7f11001a

    const v5, 0x7f11001d

    const v6, 0x7f1100ba

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/android/incallui/answer/impl/AnswerFragment$SecondaryBehavior$1;-><init>(Ljava/lang/String;IIIII)V

    sput-object v7, Lcom/android/incallui/answer/impl/AnswerFragment$SecondaryBehavior;->REJECT_WITH_SMS:Lcom/android/incallui/answer/impl/AnswerFragment$SecondaryBehavior;

    .line 405
    new-instance v0, Lcom/android/incallui/answer/impl/AnswerFragment$SecondaryBehavior$2;

    const-string v9, "ANSWER_VIDEO_AS_AUDIO"

    const/4 v10, 0x1

    const v11, 0x7f0801f3

    const v12, 0x7f110019

    const v13, 0x7f11001c

    const v14, 0x7f1100b9

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/android/incallui/answer/impl/AnswerFragment$SecondaryBehavior$2;-><init>(Ljava/lang/String;IIIII)V

    sput-object v0, Lcom/android/incallui/answer/impl/AnswerFragment$SecondaryBehavior;->ANSWER_VIDEO_AS_AUDIO:Lcom/android/incallui/answer/impl/AnswerFragment$SecondaryBehavior;

    .line 416
    new-instance v0, Lcom/android/incallui/answer/impl/AnswerFragment$SecondaryBehavior$3;

    const-string v2, "ANSWER_AND_RELEASE"

    const/4 v3, 0x2

    const v4, 0x7f0800fb

    const v5, 0x7f110018

    const v6, 0x7f11001b

    const v7, 0x7f1100b8

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/android/incallui/answer/impl/AnswerFragment$SecondaryBehavior$3;-><init>(Ljava/lang/String;IIIII)V

    sput-object v0, Lcom/android/incallui/answer/impl/AnswerFragment$SecondaryBehavior;->ANSWER_AND_RELEASE:Lcom/android/incallui/answer/impl/AnswerFragment$SecondaryBehavior;

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/android/incallui/answer/impl/AnswerFragment$SecondaryBehavior;

    .line 393
    sget-object v2, Lcom/android/incallui/answer/impl/AnswerFragment$SecondaryBehavior;->REJECT_WITH_SMS:Lcom/android/incallui/answer/impl/AnswerFragment$SecondaryBehavior;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/incallui/answer/impl/AnswerFragment$SecondaryBehavior;->ANSWER_VIDEO_AS_AUDIO:Lcom/android/incallui/answer/impl/AnswerFragment$SecondaryBehavior;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const/4 v2, 0x2

    aput-object v0, v1, v2

    sput-object v1, Lcom/android/incallui/answer/impl/AnswerFragment$SecondaryBehavior;->$VALUES:[Lcom/android/incallui/answer/impl/AnswerFragment$SecondaryBehavior;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIIII)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII)V"
        }
    .end annotation

    .line 436
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 437
    iput p3, p0, Lcom/android/incallui/answer/impl/AnswerFragment$SecondaryBehavior;->icon:I

    .line 438
    iput p4, p0, Lcom/android/incallui/answer/impl/AnswerFragment$SecondaryBehavior;->contentDescription:I

    .line 439
    iput p5, p0, Lcom/android/incallui/answer/impl/AnswerFragment$SecondaryBehavior;->accessibilityLabel:I

    .line 440
    iput p6, p0, Lcom/android/incallui/answer/impl/AnswerFragment$SecondaryBehavior;->hintText:I

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;IIIIILcom/android/incallui/answer/impl/AnswerFragment$1;)V
    .locals 0

    .line 393
    invoke-direct/range {p0 .. p6}, Lcom/android/incallui/answer/impl/AnswerFragment$SecondaryBehavior;-><init>(Ljava/lang/String;IIIII)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/incallui/answer/impl/AnswerFragment$SecondaryBehavior;
    .locals 1

    .line 393
    const-class v0, Lcom/android/incallui/answer/impl/AnswerFragment$SecondaryBehavior;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/incallui/answer/impl/AnswerFragment$SecondaryBehavior;

    return-object p0
.end method

.method public static values()[Lcom/android/incallui/answer/impl/AnswerFragment$SecondaryBehavior;
    .locals 1

    .line 393
    sget-object v0, Lcom/android/incallui/answer/impl/AnswerFragment$SecondaryBehavior;->$VALUES:[Lcom/android/incallui/answer/impl/AnswerFragment$SecondaryBehavior;

    invoke-virtual {v0}, [Lcom/android/incallui/answer/impl/AnswerFragment$SecondaryBehavior;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/incallui/answer/impl/AnswerFragment$SecondaryBehavior;

    return-object v0
.end method


# virtual methods
.method public applyToView(Landroid/widget/ImageView;)V
    .locals 2

    .line 446
    iget v0, p0, Lcom/android/incallui/answer/impl/AnswerFragment$SecondaryBehavior;->icon:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 447
    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/android/incallui/answer/impl/AnswerFragment$SecondaryBehavior;->contentDescription:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public abstract performAction(Lcom/android/incallui/answer/impl/AnswerFragment;)V
.end method
