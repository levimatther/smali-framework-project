.class public final enum Lcom/gsma/services/rcs/chat/group/GroupDataEvent$Action;
.super Ljava/lang/Enum;
.source "GroupDataEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gsma/services/rcs/chat/group/GroupDataEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Action"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/gsma/services/rcs/chat/group/GroupDataEvent$Action;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/gsma/services/rcs/chat/group/GroupDataEvent$Action;

.field public static final enum DELETE:Lcom/gsma/services/rcs/chat/group/GroupDataEvent$Action;

.field public static final enum MOVE:Lcom/gsma/services/rcs/chat/group/GroupDataEvent$Action;

.field public static final enum SET:Lcom/gsma/services/rcs/chat/group/GroupDataEvent$Action;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 27
    new-instance v0, Lcom/gsma/services/rcs/chat/group/GroupDataEvent$Action;

    const-string v1, "SET"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/gsma/services/rcs/chat/group/GroupDataEvent$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gsma/services/rcs/chat/group/GroupDataEvent$Action;->SET:Lcom/gsma/services/rcs/chat/group/GroupDataEvent$Action;

    .line 28
    new-instance v0, Lcom/gsma/services/rcs/chat/group/GroupDataEvent$Action;

    const-string v1, "DELETE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/gsma/services/rcs/chat/group/GroupDataEvent$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gsma/services/rcs/chat/group/GroupDataEvent$Action;->DELETE:Lcom/gsma/services/rcs/chat/group/GroupDataEvent$Action;

    .line 29
    new-instance v0, Lcom/gsma/services/rcs/chat/group/GroupDataEvent$Action;

    const-string v1, "MOVE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/gsma/services/rcs/chat/group/GroupDataEvent$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gsma/services/rcs/chat/group/GroupDataEvent$Action;->MOVE:Lcom/gsma/services/rcs/chat/group/GroupDataEvent$Action;

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/gsma/services/rcs/chat/group/GroupDataEvent$Action;

    .line 26
    sget-object v5, Lcom/gsma/services/rcs/chat/group/GroupDataEvent$Action;->SET:Lcom/gsma/services/rcs/chat/group/GroupDataEvent$Action;

    aput-object v5, v1, v2

    sget-object v2, Lcom/gsma/services/rcs/chat/group/GroupDataEvent$Action;->DELETE:Lcom/gsma/services/rcs/chat/group/GroupDataEvent$Action;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Lcom/gsma/services/rcs/chat/group/GroupDataEvent$Action;->$VALUES:[Lcom/gsma/services/rcs/chat/group/GroupDataEvent$Action;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 26
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/gsma/services/rcs/chat/group/GroupDataEvent$Action;
    .locals 1

    .line 26
    const-class v0, Lcom/gsma/services/rcs/chat/group/GroupDataEvent$Action;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/gsma/services/rcs/chat/group/GroupDataEvent$Action;

    return-object p0
.end method

.method public static values()[Lcom/gsma/services/rcs/chat/group/GroupDataEvent$Action;
    .locals 1

    .line 26
    sget-object v0, Lcom/gsma/services/rcs/chat/group/GroupDataEvent$Action;->$VALUES:[Lcom/gsma/services/rcs/chat/group/GroupDataEvent$Action;

    invoke-virtual {v0}, [Lcom/gsma/services/rcs/chat/group/GroupDataEvent$Action;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/gsma/services/rcs/chat/group/GroupDataEvent$Action;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 33
    invoke-super {p0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
