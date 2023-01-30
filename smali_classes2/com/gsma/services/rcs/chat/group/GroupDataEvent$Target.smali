.class public final enum Lcom/gsma/services/rcs/chat/group/GroupDataEvent$Target;
.super Ljava/lang/Enum;
.source "GroupDataEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gsma/services/rcs/chat/group/GroupDataEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Target"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/gsma/services/rcs/chat/group/GroupDataEvent$Target;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/gsma/services/rcs/chat/group/GroupDataEvent$Target;

.field public static final enum BULLETIN:Lcom/gsma/services/rcs/chat/group/GroupDataEvent$Target;

.field public static final enum ICON:Lcom/gsma/services/rcs/chat/group/GroupDataEvent$Target;

.field public static final enum ROLE:Lcom/gsma/services/rcs/chat/group/GroupDataEvent$Target;

.field public static final enum SUBJECT:Lcom/gsma/services/rcs/chat/group/GroupDataEvent$Target;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 15
    new-instance v0, Lcom/gsma/services/rcs/chat/group/GroupDataEvent$Target;

    const-string v1, "SUBJECT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/gsma/services/rcs/chat/group/GroupDataEvent$Target;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gsma/services/rcs/chat/group/GroupDataEvent$Target;->SUBJECT:Lcom/gsma/services/rcs/chat/group/GroupDataEvent$Target;

    .line 16
    new-instance v0, Lcom/gsma/services/rcs/chat/group/GroupDataEvent$Target;

    const-string v1, "ICON"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/gsma/services/rcs/chat/group/GroupDataEvent$Target;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gsma/services/rcs/chat/group/GroupDataEvent$Target;->ICON:Lcom/gsma/services/rcs/chat/group/GroupDataEvent$Target;

    .line 17
    new-instance v0, Lcom/gsma/services/rcs/chat/group/GroupDataEvent$Target;

    const-string v1, "BULLETIN"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/gsma/services/rcs/chat/group/GroupDataEvent$Target;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gsma/services/rcs/chat/group/GroupDataEvent$Target;->BULLETIN:Lcom/gsma/services/rcs/chat/group/GroupDataEvent$Target;

    .line 18
    new-instance v0, Lcom/gsma/services/rcs/chat/group/GroupDataEvent$Target;

    const-string v1, "ROLE"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/gsma/services/rcs/chat/group/GroupDataEvent$Target;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gsma/services/rcs/chat/group/GroupDataEvent$Target;->ROLE:Lcom/gsma/services/rcs/chat/group/GroupDataEvent$Target;

    const/4 v1, 0x4

    new-array v1, v1, [Lcom/gsma/services/rcs/chat/group/GroupDataEvent$Target;

    .line 14
    sget-object v6, Lcom/gsma/services/rcs/chat/group/GroupDataEvent$Target;->SUBJECT:Lcom/gsma/services/rcs/chat/group/GroupDataEvent$Target;

    aput-object v6, v1, v2

    sget-object v2, Lcom/gsma/services/rcs/chat/group/GroupDataEvent$Target;->ICON:Lcom/gsma/services/rcs/chat/group/GroupDataEvent$Target;

    aput-object v2, v1, v3

    sget-object v2, Lcom/gsma/services/rcs/chat/group/GroupDataEvent$Target;->BULLETIN:Lcom/gsma/services/rcs/chat/group/GroupDataEvent$Target;

    aput-object v2, v1, v4

    aput-object v0, v1, v5

    sput-object v1, Lcom/gsma/services/rcs/chat/group/GroupDataEvent$Target;->$VALUES:[Lcom/gsma/services/rcs/chat/group/GroupDataEvent$Target;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 14
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/gsma/services/rcs/chat/group/GroupDataEvent$Target;
    .locals 1

    .line 14
    const-class v0, Lcom/gsma/services/rcs/chat/group/GroupDataEvent$Target;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/gsma/services/rcs/chat/group/GroupDataEvent$Target;

    return-object p0
.end method

.method public static values()[Lcom/gsma/services/rcs/chat/group/GroupDataEvent$Target;
    .locals 1

    .line 14
    sget-object v0, Lcom/gsma/services/rcs/chat/group/GroupDataEvent$Target;->$VALUES:[Lcom/gsma/services/rcs/chat/group/GroupDataEvent$Target;

    invoke-virtual {v0}, [Lcom/gsma/services/rcs/chat/group/GroupDataEvent$Target;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/gsma/services/rcs/chat/group/GroupDataEvent$Target;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 22
    invoke-super {p0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
