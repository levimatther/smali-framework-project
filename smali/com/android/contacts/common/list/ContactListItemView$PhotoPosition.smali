.class public final enum Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;
.super Ljava/lang/Enum;
.source "ContactListItemView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/common/list/ContactListItemView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PhotoPosition"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;

.field public static final enum LEFT:Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;

.field public static final enum RIGHT:Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1565
    new-instance v0, Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;

    const-string v1, "LEFT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;->LEFT:Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;

    .line 1566
    new-instance v0, Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;

    const-string v1, "RIGHT"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;->RIGHT:Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;

    .line 1564
    sget-object v4, Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;->LEFT:Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;

    aput-object v4, v1, v2

    aput-object v0, v1, v3

    sput-object v1, Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;->$VALUES:[Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1564
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;
    .locals 1

    .line 1564
    const-class v0, Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;

    return-object p0
.end method

.method public static values()[Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;
    .locals 1

    .line 1564
    sget-object v0, Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;->$VALUES:[Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;

    invoke-virtual {v0}, [Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;

    return-object v0
.end method
