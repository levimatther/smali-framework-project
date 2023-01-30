.class public Lcom/tct/cs/services/rcs/chatbot/message/action/SettingsAction;
.super Lcom/tct/cs/services/rcs/chatbot/message/action/Action;
.source "SettingsAction.java"


# static fields
.field public static final ACTION_disableAnonymization:Ljava/lang/String; = "disableAnonymization"

.field public static final ACTION_enableDisplayedNotifications:Ljava/lang/String; = "enableDisplayedNotifications"


# direct methods
.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 58
    invoke-direct {p0, p1}, Lcom/tct/cs/services/rcs/chatbot/message/action/Action;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 54
    invoke-direct {p0, p1, p2, p3}, Lcom/tct/cs/services/rcs/chatbot/message/action/Action;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
