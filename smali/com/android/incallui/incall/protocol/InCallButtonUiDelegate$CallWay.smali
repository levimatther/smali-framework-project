.class public final enum Lcom/android/incallui/incall/protocol/InCallButtonUiDelegate$CallWay;
.super Ljava/lang/Enum;
.source "InCallButtonUiDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/incall/protocol/InCallButtonUiDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CallWay"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/incallui/incall/protocol/InCallButtonUiDelegate$CallWay;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/incallui/incall/protocol/InCallButtonUiDelegate$CallWay;

.field public static final enum BY_CALL_LOG:Lcom/android/incallui/incall/protocol/InCallButtonUiDelegate$CallWay;

.field public static final enum BY_CONTACT:Lcom/android/incallui/incall/protocol/InCallButtonUiDelegate$CallWay;

.field public static final enum BY_DIALPAD:Lcom/android/incallui/incall/protocol/InCallButtonUiDelegate$CallWay;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 26
    new-instance v0, Lcom/android/incallui/incall/protocol/InCallButtonUiDelegate$CallWay;

    const-string v1, "BY_DIALPAD"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/incallui/incall/protocol/InCallButtonUiDelegate$CallWay;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/incallui/incall/protocol/InCallButtonUiDelegate$CallWay;->BY_DIALPAD:Lcom/android/incallui/incall/protocol/InCallButtonUiDelegate$CallWay;

    .line 27
    new-instance v0, Lcom/android/incallui/incall/protocol/InCallButtonUiDelegate$CallWay;

    const-string v1, "BY_CONTACT"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/android/incallui/incall/protocol/InCallButtonUiDelegate$CallWay;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/incallui/incall/protocol/InCallButtonUiDelegate$CallWay;->BY_CONTACT:Lcom/android/incallui/incall/protocol/InCallButtonUiDelegate$CallWay;

    .line 28
    new-instance v0, Lcom/android/incallui/incall/protocol/InCallButtonUiDelegate$CallWay;

    const-string v1, "BY_CALL_LOG"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/android/incallui/incall/protocol/InCallButtonUiDelegate$CallWay;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/incallui/incall/protocol/InCallButtonUiDelegate$CallWay;->BY_CALL_LOG:Lcom/android/incallui/incall/protocol/InCallButtonUiDelegate$CallWay;

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/android/incallui/incall/protocol/InCallButtonUiDelegate$CallWay;

    .line 25
    sget-object v5, Lcom/android/incallui/incall/protocol/InCallButtonUiDelegate$CallWay;->BY_DIALPAD:Lcom/android/incallui/incall/protocol/InCallButtonUiDelegate$CallWay;

    aput-object v5, v1, v2

    sget-object v2, Lcom/android/incallui/incall/protocol/InCallButtonUiDelegate$CallWay;->BY_CONTACT:Lcom/android/incallui/incall/protocol/InCallButtonUiDelegate$CallWay;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Lcom/android/incallui/incall/protocol/InCallButtonUiDelegate$CallWay;->$VALUES:[Lcom/android/incallui/incall/protocol/InCallButtonUiDelegate$CallWay;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/incallui/incall/protocol/InCallButtonUiDelegate$CallWay;
    .locals 1

    .line 25
    const-class v0, Lcom/android/incallui/incall/protocol/InCallButtonUiDelegate$CallWay;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/incallui/incall/protocol/InCallButtonUiDelegate$CallWay;

    return-object p0
.end method

.method public static values()[Lcom/android/incallui/incall/protocol/InCallButtonUiDelegate$CallWay;
    .locals 1

    .line 25
    sget-object v0, Lcom/android/incallui/incall/protocol/InCallButtonUiDelegate$CallWay;->$VALUES:[Lcom/android/incallui/incall/protocol/InCallButtonUiDelegate$CallWay;

    invoke-virtual {v0}, [Lcom/android/incallui/incall/protocol/InCallButtonUiDelegate$CallWay;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/incallui/incall/protocol/InCallButtonUiDelegate$CallWay;

    return-object v0
.end method
