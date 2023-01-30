.class public final Lcom/android/dialer/callintent/CallSpecificAppData;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "CallSpecificAppData.java"

# interfaces
.implements Lcom/android/dialer/callintent/CallSpecificAppDataOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dialer/callintent/CallSpecificAppData$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/android/dialer/callintent/CallSpecificAppData;",
        "Lcom/android/dialer/callintent/CallSpecificAppData$Builder;",
        ">;",
        "Lcom/android/dialer/callintent/CallSpecificAppDataOrBuilder;"
    }
.end annotation


# static fields
.field public static final CALL_INITIATION_TYPE_FIELD_NUMBER:I = 0x1

.field public static final CHARACTERS_IN_SEARCH_STRING_FIELD_NUMBER:I = 0x3

.field private static final DEFAULT_INSTANCE:Lcom/android/dialer/callintent/CallSpecificAppData;

.field public static final LIGHTBRINGER_BUTTON_APPEAR_IN_COLLAPSED_CALL_LOG_ITEM_COUNT_FIELD_NUMBER:I = 0xc

.field public static final LIGHTBRINGER_BUTTON_APPEAR_IN_EXPANDED_CALL_LOG_ITEM_COUNT_FIELD_NUMBER:I = 0xb

.field public static final LIGHTBRINGER_BUTTON_APPEAR_IN_SEARCH_COUNT_FIELD_NUMBER:I = 0xd

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/android/dialer/callintent/CallSpecificAppData;",
            ">;"
        }
    .end annotation
.end field

.field public static final POSITION_OF_SELECTED_SEARCH_RESULT_FIELD_NUMBER:I = 0x2

.field public static final SPEED_DIAL_CONTACT_POSITION_FIELD_NUMBER:I = 0x5

.field public static final SPEED_DIAL_CONTACT_TYPE_FIELD_NUMBER:I = 0x4

.field public static final STARTING_TAB_INDEX_FIELD_NUMBER:I = 0xa

.field public static final TIME_SINCE_APP_LAUNCH_FIELD_NUMBER:I = 0x6

.field public static final TIME_SINCE_FIRST_CLICK_FIELD_NUMBER:I = 0x7

.field public static final UI_ACTIONS_SINCE_APP_LAUNCH_FIELD_NUMBER:I = 0x8

.field public static final UI_ACTION_TIMESTAMPS_SINCE_APP_LAUNCH_FIELD_NUMBER:I = 0x9

.field private static final speedDialContactType_converter_:Lcom/google/protobuf/Internal$ListAdapter$Converter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ListAdapter$Converter<",
            "Ljava/lang/Integer;",
            "Lcom/android/dialer/callintent/SpeedDialContactType$Type;",
            ">;"
        }
    .end annotation
.end field

.field private static final uiActionsSinceAppLaunch_converter_:Lcom/google/protobuf/Internal$ListAdapter$Converter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ListAdapter$Converter<",
            "Ljava/lang/Integer;",
            "Lcom/android/dialer/logging/UiAction$Type;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private bitField0_:I

.field private callInitiationType_:I

.field private charactersInSearchString_:I

.field private lightbringerButtonAppearInCollapsedCallLogItemCount_:I

.field private lightbringerButtonAppearInExpandedCallLogItemCount_:I

.field private lightbringerButtonAppearInSearchCount_:I

.field private positionOfSelectedSearchResult_:I

.field private speedDialContactPosition_:I

.field private speedDialContactType_:Lcom/google/protobuf/Internal$IntList;

.field private startingTabIndex_:I

.field private timeSinceAppLaunch_:J

.field private timeSinceFirstClick_:J

.field private uiActionTimestampsSinceAppLaunch_:Lcom/google/protobuf/Internal$LongList;

.field private uiActionsSinceAppLaunch_:Lcom/google/protobuf/Internal$IntList;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 127
    new-instance v0, Lcom/android/dialer/callintent/CallSpecificAppData$1;

    invoke-direct {v0}, Lcom/android/dialer/callintent/CallSpecificAppData$1;-><init>()V

    sput-object v0, Lcom/android/dialer/callintent/CallSpecificAppData;->speedDialContactType_converter_:Lcom/google/protobuf/Internal$ListAdapter$Converter;

    .line 298
    new-instance v0, Lcom/android/dialer/callintent/CallSpecificAppData$2;

    invoke-direct {v0}, Lcom/android/dialer/callintent/CallSpecificAppData$2;-><init>()V

    sput-object v0, Lcom/android/dialer/callintent/CallSpecificAppData;->uiActionsSinceAppLaunch_converter_:Lcom/google/protobuf/Internal$ListAdapter$Converter;

    .line 1636
    new-instance v0, Lcom/android/dialer/callintent/CallSpecificAppData;

    invoke-direct {v0}, Lcom/android/dialer/callintent/CallSpecificAppData;-><init>()V

    sput-object v0, Lcom/android/dialer/callintent/CallSpecificAppData;->DEFAULT_INSTANCE:Lcom/android/dialer/callintent/CallSpecificAppData;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 21
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 22
    invoke-static {}, Lcom/android/dialer/callintent/CallSpecificAppData;->emptyIntList()Lcom/google/protobuf/Internal$IntList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/callintent/CallSpecificAppData;->speedDialContactType_:Lcom/google/protobuf/Internal$IntList;

    .line 23
    invoke-static {}, Lcom/android/dialer/callintent/CallSpecificAppData;->emptyIntList()Lcom/google/protobuf/Internal$IntList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/callintent/CallSpecificAppData;->uiActionsSinceAppLaunch_:Lcom/google/protobuf/Internal$IntList;

    .line 24
    invoke-static {}, Lcom/android/dialer/callintent/CallSpecificAppData;->emptyLongList()Lcom/google/protobuf/Internal$LongList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/callintent/CallSpecificAppData;->uiActionTimestampsSinceAppLaunch_:Lcom/google/protobuf/Internal$LongList;

    return-void
.end method

.method static synthetic access$000()Lcom/android/dialer/callintent/CallSpecificAppData;
    .locals 1

    .line 16
    sget-object v0, Lcom/android/dialer/callintent/CallSpecificAppData;->DEFAULT_INSTANCE:Lcom/android/dialer/callintent/CallSpecificAppData;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/dialer/callintent/CallSpecificAppData;Lcom/android/dialer/callintent/CallInitiationType$Type;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1}, Lcom/android/dialer/callintent/CallSpecificAppData;->setCallInitiationType(Lcom/android/dialer/callintent/CallInitiationType$Type;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/dialer/callintent/CallSpecificAppData;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/android/dialer/callintent/CallSpecificAppData;->clearSpeedDialContactType()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/dialer/callintent/CallSpecificAppData;I)V
    .locals 0

    .line 16
    invoke-direct {p0, p1}, Lcom/android/dialer/callintent/CallSpecificAppData;->setSpeedDialContactPosition(I)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/dialer/callintent/CallSpecificAppData;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/android/dialer/callintent/CallSpecificAppData;->clearSpeedDialContactPosition()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/dialer/callintent/CallSpecificAppData;J)V
    .locals 0

    .line 16
    invoke-direct {p0, p1, p2}, Lcom/android/dialer/callintent/CallSpecificAppData;->setTimeSinceAppLaunch(J)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/dialer/callintent/CallSpecificAppData;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/android/dialer/callintent/CallSpecificAppData;->clearTimeSinceAppLaunch()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/dialer/callintent/CallSpecificAppData;J)V
    .locals 0

    .line 16
    invoke-direct {p0, p1, p2}, Lcom/android/dialer/callintent/CallSpecificAppData;->setTimeSinceFirstClick(J)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/dialer/callintent/CallSpecificAppData;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/android/dialer/callintent/CallSpecificAppData;->clearTimeSinceFirstClick()V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/dialer/callintent/CallSpecificAppData;ILcom/android/dialer/logging/UiAction$Type;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1, p2}, Lcom/android/dialer/callintent/CallSpecificAppData;->setUiActionsSinceAppLaunch(ILcom/android/dialer/logging/UiAction$Type;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/dialer/callintent/CallSpecificAppData;Lcom/android/dialer/logging/UiAction$Type;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1}, Lcom/android/dialer/callintent/CallSpecificAppData;->addUiActionsSinceAppLaunch(Lcom/android/dialer/logging/UiAction$Type;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/dialer/callintent/CallSpecificAppData;Ljava/lang/Iterable;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1}, Lcom/android/dialer/callintent/CallSpecificAppData;->addAllUiActionsSinceAppLaunch(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/dialer/callintent/CallSpecificAppData;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/android/dialer/callintent/CallSpecificAppData;->clearCallInitiationType()V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/dialer/callintent/CallSpecificAppData;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/android/dialer/callintent/CallSpecificAppData;->clearUiActionsSinceAppLaunch()V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/dialer/callintent/CallSpecificAppData;IJ)V
    .locals 0

    .line 16
    invoke-direct {p0, p1, p2, p3}, Lcom/android/dialer/callintent/CallSpecificAppData;->setUiActionTimestampsSinceAppLaunch(IJ)V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/dialer/callintent/CallSpecificAppData;J)V
    .locals 0

    .line 16
    invoke-direct {p0, p1, p2}, Lcom/android/dialer/callintent/CallSpecificAppData;->addUiActionTimestampsSinceAppLaunch(J)V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/dialer/callintent/CallSpecificAppData;Ljava/lang/Iterable;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1}, Lcom/android/dialer/callintent/CallSpecificAppData;->addAllUiActionTimestampsSinceAppLaunch(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/dialer/callintent/CallSpecificAppData;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/android/dialer/callintent/CallSpecificAppData;->clearUiActionTimestampsSinceAppLaunch()V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/dialer/callintent/CallSpecificAppData;I)V
    .locals 0

    .line 16
    invoke-direct {p0, p1}, Lcom/android/dialer/callintent/CallSpecificAppData;->setStartingTabIndex(I)V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/dialer/callintent/CallSpecificAppData;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/android/dialer/callintent/CallSpecificAppData;->clearStartingTabIndex()V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/dialer/callintent/CallSpecificAppData;I)V
    .locals 0

    .line 16
    invoke-direct {p0, p1}, Lcom/android/dialer/callintent/CallSpecificAppData;->setLightbringerButtonAppearInExpandedCallLogItemCount(I)V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/dialer/callintent/CallSpecificAppData;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/android/dialer/callintent/CallSpecificAppData;->clearLightbringerButtonAppearInExpandedCallLogItemCount()V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/dialer/callintent/CallSpecificAppData;I)V
    .locals 0

    .line 16
    invoke-direct {p0, p1}, Lcom/android/dialer/callintent/CallSpecificAppData;->setLightbringerButtonAppearInCollapsedCallLogItemCount(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/dialer/callintent/CallSpecificAppData;I)V
    .locals 0

    .line 16
    invoke-direct {p0, p1}, Lcom/android/dialer/callintent/CallSpecificAppData;->setPositionOfSelectedSearchResult(I)V

    return-void
.end method

.method static synthetic access$3000(Lcom/android/dialer/callintent/CallSpecificAppData;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/android/dialer/callintent/CallSpecificAppData;->clearLightbringerButtonAppearInCollapsedCallLogItemCount()V

    return-void
.end method

.method static synthetic access$3100(Lcom/android/dialer/callintent/CallSpecificAppData;I)V
    .locals 0

    .line 16
    invoke-direct {p0, p1}, Lcom/android/dialer/callintent/CallSpecificAppData;->setLightbringerButtonAppearInSearchCount(I)V

    return-void
.end method

.method static synthetic access$3200(Lcom/android/dialer/callintent/CallSpecificAppData;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/android/dialer/callintent/CallSpecificAppData;->clearLightbringerButtonAppearInSearchCount()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/dialer/callintent/CallSpecificAppData;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/android/dialer/callintent/CallSpecificAppData;->clearPositionOfSelectedSearchResult()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/dialer/callintent/CallSpecificAppData;I)V
    .locals 0

    .line 16
    invoke-direct {p0, p1}, Lcom/android/dialer/callintent/CallSpecificAppData;->setCharactersInSearchString(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/dialer/callintent/CallSpecificAppData;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/android/dialer/callintent/CallSpecificAppData;->clearCharactersInSearchString()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/dialer/callintent/CallSpecificAppData;ILcom/android/dialer/callintent/SpeedDialContactType$Type;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1, p2}, Lcom/android/dialer/callintent/CallSpecificAppData;->setSpeedDialContactType(ILcom/android/dialer/callintent/SpeedDialContactType$Type;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/dialer/callintent/CallSpecificAppData;Lcom/android/dialer/callintent/SpeedDialContactType$Type;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1}, Lcom/android/dialer/callintent/CallSpecificAppData;->addSpeedDialContactType(Lcom/android/dialer/callintent/SpeedDialContactType$Type;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/dialer/callintent/CallSpecificAppData;Ljava/lang/Iterable;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1}, Lcom/android/dialer/callintent/CallSpecificAppData;->addAllSpeedDialContactType(Ljava/lang/Iterable;)V

    return-void
.end method

.method private addAllSpeedDialContactType(Ljava/lang/Iterable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/android/dialer/callintent/SpeedDialContactType$Type;",
            ">;)V"
        }
    .end annotation

    .line 190
    invoke-direct {p0}, Lcom/android/dialer/callintent/CallSpecificAppData;->ensureSpeedDialContactTypeIsMutable()V

    .line 191
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/dialer/callintent/SpeedDialContactType$Type;

    .line 192
    iget-object v1, p0, Lcom/android/dialer/callintent/CallSpecificAppData;->speedDialContactType_:Lcom/google/protobuf/Internal$IntList;

    invoke-virtual {v0}, Lcom/android/dialer/callintent/SpeedDialContactType$Type;->getNumber()I

    move-result v0

    invoke-interface {v1, v0}, Lcom/google/protobuf/Internal$IntList;->addInt(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private addAllUiActionTimestampsSinceAppLaunch(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 458
    invoke-direct {p0}, Lcom/android/dialer/callintent/CallSpecificAppData;->ensureUiActionTimestampsSinceAppLaunchIsMutable()V

    .line 459
    iget-object v0, p0, Lcom/android/dialer/callintent/CallSpecificAppData;->uiActionTimestampsSinceAppLaunch_:Lcom/google/protobuf/Internal$LongList;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method private addAllUiActionsSinceAppLaunch(Ljava/lang/Iterable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/android/dialer/logging/UiAction$Type;",
            ">;)V"
        }
    .end annotation

    .line 391
    invoke-direct {p0}, Lcom/android/dialer/callintent/CallSpecificAppData;->ensureUiActionsSinceAppLaunchIsMutable()V

    .line 392
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/dialer/logging/UiAction$Type;

    .line 393
    iget-object v1, p0, Lcom/android/dialer/callintent/CallSpecificAppData;->uiActionsSinceAppLaunch_:Lcom/google/protobuf/Internal$IntList;

    invoke-virtual {v0}, Lcom/android/dialer/logging/UiAction$Type;->getNumber()I

    move-result v0

    invoke-interface {v1, v0}, Lcom/google/protobuf/Internal$IntList;->addInt(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private addSpeedDialContactType(Lcom/android/dialer/callintent/SpeedDialContactType$Type;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 182
    invoke-direct {p0}, Lcom/android/dialer/callintent/CallSpecificAppData;->ensureSpeedDialContactTypeIsMutable()V

    .line 183
    iget-object v0, p0, Lcom/android/dialer/callintent/CallSpecificAppData;->speedDialContactType_:Lcom/google/protobuf/Internal$IntList;

    invoke-virtual {p1}, Lcom/android/dialer/callintent/SpeedDialContactType$Type;->getNumber()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$IntList;->addInt(I)V

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 180
    throw p1
.end method

.method private addUiActionTimestampsSinceAppLaunch(J)V
    .locals 1

    .line 450
    invoke-direct {p0}, Lcom/android/dialer/callintent/CallSpecificAppData;->ensureUiActionTimestampsSinceAppLaunchIsMutable()V

    .line 451
    iget-object v0, p0, Lcom/android/dialer/callintent/CallSpecificAppData;->uiActionTimestampsSinceAppLaunch_:Lcom/google/protobuf/Internal$LongList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$LongList;->addLong(J)V

    return-void
.end method

.method private addUiActionsSinceAppLaunch(Lcom/android/dialer/logging/UiAction$Type;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 378
    invoke-direct {p0}, Lcom/android/dialer/callintent/CallSpecificAppData;->ensureUiActionsSinceAppLaunchIsMutable()V

    .line 379
    iget-object v0, p0, Lcom/android/dialer/callintent/CallSpecificAppData;->uiActionsSinceAppLaunch_:Lcom/google/protobuf/Internal$IntList;

    invoke-virtual {p1}, Lcom/android/dialer/logging/UiAction$Type;->getNumber()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$IntList;->addInt(I)V

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 376
    throw p1
.end method

.method private clearCallInitiationType()V
    .locals 1

    .line 58
    iget v0, p0, Lcom/android/dialer/callintent/CallSpecificAppData;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/android/dialer/callintent/CallSpecificAppData;->bitField0_:I

    const/4 v0, 0x0

    .line 59
    iput v0, p0, Lcom/android/dialer/callintent/CallSpecificAppData;->callInitiationType_:I

    return-void
.end method

.method private clearCharactersInSearchString()V
    .locals 1

    .line 120
    iget v0, p0, Lcom/android/dialer/callintent/CallSpecificAppData;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/android/dialer/callintent/CallSpecificAppData;->bitField0_:I

    const/4 v0, 0x0

    .line 121
    iput v0, p0, Lcom/android/dialer/callintent/CallSpecificAppData;->charactersInSearchString_:I

    return-void
.end method

.method private clearLightbringerButtonAppearInCollapsedCallLogItemCount()V
    .locals 1

    .line 574
    iget v0, p0, Lcom/android/dialer/callintent/CallSpecificAppData;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/android/dialer/callintent/CallSpecificAppData;->bitField0_:I

    const/4 v0, 0x0

    .line 575
    iput v0, p0, Lcom/android/dialer/callintent/CallSpecificAppData;->lightbringerButtonAppearInCollapsedCallLogItemCount_:I

    return-void
.end method

.method private clearLightbringerButtonAppearInExpandedCallLogItemCount()V
    .locals 1

    .line 543
    iget v0, p0, Lcom/android/dialer/callintent/CallSpecificAppData;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/android/dialer/callintent/CallSpecificAppData;->bitField0_:I

    const/4 v0, 0x0

    .line 544
    iput v0, p0, Lcom/android/dialer/callintent/CallSpecificAppData;->lightbringerButtonAppearInExpandedCallLogItemCount_:I

    return-void
.end method

.method private clearLightbringerButtonAppearInSearchCount()V
    .locals 1

    .line 605
    iget v0, p0, Lcom/android/dialer/callintent/CallSpecificAppData;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/android/dialer/callintent/CallSpecificAppData;->bitField0_:I

    const/4 v0, 0x0

    .line 606
    iput v0, p0, Lcom/android/dialer/callintent/CallSpecificAppData;->lightbringerButtonAppearInSearchCount_:I

    return-void
.end method

.method private clearPositionOfSelectedSearchResult()V
    .locals 1

    .line 89
    iget v0, p0, Lcom/android/dialer/callintent/CallSpecificAppData;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/android/dialer/callintent/CallSpecificAppData;->bitField0_:I

    const/4 v0, 0x0

    .line 90
    iput v0, p0, Lcom/android/dialer/callintent/CallSpecificAppData;->positionOfSelectedSearchResult_:I

    return-void
.end method

.method private clearSpeedDialContactPosition()V
    .locals 1

    .line 229
    iget v0, p0, Lcom/android/dialer/callintent/CallSpecificAppData;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/android/dialer/callintent/CallSpecificAppData;->bitField0_:I

    const/4 v0, 0x0

    .line 230
    iput v0, p0, Lcom/android/dialer/callintent/CallSpecificAppData;->speedDialContactPosition_:I

    return-void
.end method

.method private clearSpeedDialContactType()V
    .locals 1

    .line 199
    invoke-static {}, Lcom/android/dialer/callintent/CallSpecificAppData;->emptyIntList()Lcom/google/protobuf/Internal$IntList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/callintent/CallSpecificAppData;->speedDialContactType_:Lcom/google/protobuf/Internal$IntList;

    return-void
.end method

.method private clearStartingTabIndex()V
    .locals 1

    .line 496
    iget v0, p0, Lcom/android/dialer/callintent/CallSpecificAppData;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/android/dialer/callintent/CallSpecificAppData;->bitField0_:I

    const/4 v0, 0x0

    .line 497
    iput v0, p0, Lcom/android/dialer/callintent/CallSpecificAppData;->startingTabIndex_:I

    return-void
.end method

.method private clearTimeSinceAppLaunch()V
    .locals 2

    .line 260
    iget v0, p0, Lcom/android/dialer/callintent/CallSpecificAppData;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/android/dialer/callintent/CallSpecificAppData;->bitField0_:I

    const-wide/16 v0, 0x0

    .line 261
    iput-wide v0, p0, Lcom/android/dialer/callintent/CallSpecificAppData;->timeSinceAppLaunch_:J

    return-void
.end method

.method private clearTimeSinceFirstClick()V
    .locals 2

    .line 291
    iget v0, p0, Lcom/android/dialer/callintent/CallSpecificAppData;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/android/dialer/callintent/CallSpecificAppData;->bitField0_:I

    const-wide/16 v0, 0x0

    .line 292
    iput-wide v0, p0, Lcom/android/dialer/callintent/CallSpecificAppData;->timeSinceFirstClick_:J

    return-void
.end method

.method private clearUiActionTimestampsSinceAppLaunch()V
    .locals 1

    .line 466
    invoke-static {}, Lcom/android/dialer/callintent/CallSpecificAppData;->emptyLongList()Lcom/google/protobuf/Internal$LongList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/callintent/CallSpecificAppData;->uiActionTimestampsSinceAppLaunch_:Lcom/google/protobuf/Internal$LongList;

    return-void
.end method

.method private clearUiActionsSinceAppLaunch()V
    .locals 1

    .line 405
    invoke-static {}, Lcom/android/dialer/callintent/CallSpecificAppData;->emptyIntList()Lcom/google/protobuf/Internal$IntList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/callintent/CallSpecificAppData;->uiActionsSinceAppLaunch_:Lcom/google/protobuf/Internal$IntList;

    return-void
.end method

.method private ensureSpeedDialContactTypeIsMutable()V
    .locals 1

    .line 159
    iget-object v0, p0, Lcom/android/dialer/callintent/CallSpecificAppData;->speedDialContactType_:Lcom/google/protobuf/Internal$IntList;

    invoke-interface {v0}, Lcom/google/protobuf/Internal$IntList;->isModifiable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/android/dialer/callintent/CallSpecificAppData;->speedDialContactType_:Lcom/google/protobuf/Internal$IntList;

    .line 161
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$IntList;)Lcom/google/protobuf/Internal$IntList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/callintent/CallSpecificAppData;->speedDialContactType_:Lcom/google/protobuf/Internal$IntList;

    :cond_0
    return-void
.end method

.method private ensureUiActionTimestampsSinceAppLaunchIsMutable()V
    .locals 1

    .line 433
    iget-object v0, p0, Lcom/android/dialer/callintent/CallSpecificAppData;->uiActionTimestampsSinceAppLaunch_:Lcom/google/protobuf/Internal$LongList;

    invoke-interface {v0}, Lcom/google/protobuf/Internal$LongList;->isModifiable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 434
    iget-object v0, p0, Lcom/android/dialer/callintent/CallSpecificAppData;->uiActionTimestampsSinceAppLaunch_:Lcom/google/protobuf/Internal$LongList;

    .line 435
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$LongList;)Lcom/google/protobuf/Internal$LongList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/callintent/CallSpecificAppData;->uiActionTimestampsSinceAppLaunch_:Lcom/google/protobuf/Internal$LongList;

    :cond_0
    return-void
.end method

.method private ensureUiActionsSinceAppLaunchIsMutable()V
    .locals 1

    .line 345
    iget-object v0, p0, Lcom/android/dialer/callintent/CallSpecificAppData;->uiActionsSinceAppLaunch_:Lcom/google/protobuf/Internal$IntList;

    invoke-interface {v0}, Lcom/google/protobuf/Internal$IntList;->isModifiable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 346
    iget-object v0, p0, Lcom/android/dialer/callintent/CallSpecificAppData;->uiActionsSinceAppLaunch_:Lcom/google/protobuf/Internal$IntList;

    .line 347
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$IntList;)Lcom/google/protobuf/Internal$IntList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/callintent/CallSpecificAppData;->uiActionsSinceAppLaunch_:Lcom/google/protobuf/Internal$IntList;

    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lcom/android/dialer/callintent/CallSpecificAppData;
    .locals 1

    .line 1640
    sget-object v0, Lcom/android/dialer/callintent/CallSpecificAppData;->DEFAULT_INSTANCE:Lcom/android/dialer/callintent/CallSpecificAppData;

    return-object v0
.end method

.method public static newBuilder()Lcom/android/dialer/callintent/CallSpecificAppData$Builder;
    .locals 1

    .line 807
    sget-object v0, Lcom/android/dialer/callintent/CallSpecificAppData;->DEFAULT_INSTANCE:Lcom/android/dialer/callintent/CallSpecificAppData;

    invoke-virtual {v0}, Lcom/android/dialer/callintent/CallSpecificAppData;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/android/dialer/callintent/CallSpecificAppData$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/android/dialer/callintent/CallSpecificAppData;)Lcom/android/dialer/callintent/CallSpecificAppData$Builder;
    .locals 1

    .line 810
    sget-object v0, Lcom/android/dialer/callintent/CallSpecificAppData;->DEFAULT_INSTANCE:Lcom/android/dialer/callintent/CallSpecificAppData;

    invoke-virtual {v0, p0}, Lcom/android/dialer/callintent/CallSpecificAppData;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/android/dialer/callintent/CallSpecificAppData$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/android/dialer/callintent/CallSpecificAppData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 784
    sget-object v0, Lcom/android/dialer/callintent/CallSpecificAppData;->DEFAULT_INSTANCE:Lcom/android/dialer/callintent/CallSpecificAppData;

    invoke-static {v0, p0}, Lcom/android/dialer/callintent/CallSpecificAppData;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/android/dialer/callintent/CallSpecificAppData;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/dialer/callintent/CallSpecificAppData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 790
    sget-object v0, Lcom/android/dialer/callintent/CallSpecificAppData;->DEFAULT_INSTANCE:Lcom/android/dialer/callintent/CallSpecificAppData;

    invoke-static {v0, p0, p1}, Lcom/android/dialer/callintent/CallSpecificAppData;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/android/dialer/callintent/CallSpecificAppData;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/android/dialer/callintent/CallSpecificAppData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 748
    sget-object v0, Lcom/android/dialer/callintent/CallSpecificAppData;->DEFAULT_INSTANCE:Lcom/android/dialer/callintent/CallSpecificAppData;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/android/dialer/callintent/CallSpecificAppData;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/dialer/callintent/CallSpecificAppData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 755
    sget-object v0, Lcom/android/dialer/callintent/CallSpecificAppData;->DEFAULT_INSTANCE:Lcom/android/dialer/callintent/CallSpecificAppData;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/android/dialer/callintent/CallSpecificAppData;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/android/dialer/callintent/CallSpecificAppData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 795
    sget-object v0, Lcom/android/dialer/callintent/CallSpecificAppData;->DEFAULT_INSTANCE:Lcom/android/dialer/callintent/CallSpecificAppData;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/android/dialer/callintent/CallSpecificAppData;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/dialer/callintent/CallSpecificAppData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 802
    sget-object v0, Lcom/android/dialer/callintent/CallSpecificAppData;->DEFAULT_INSTANCE:Lcom/android/dialer/callintent/CallSpecificAppData;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/android/dialer/callintent/CallSpecificAppData;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/android/dialer/callintent/CallSpecificAppData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 772
    sget-object v0, Lcom/android/dialer/callintent/CallSpecificAppData;->DEFAULT_INSTANCE:Lcom/android/dialer/callintent/CallSpecificAppData;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/android/dialer/callintent/CallSpecificAppData;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/dialer/callintent/CallSpecificAppData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 779
    sget-object v0, Lcom/android/dialer/callintent/CallSpecificAppData;->DEFAULT_INSTANCE:Lcom/android/dialer/callintent/CallSpecificAppData;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/android/dialer/callintent/CallSpecificAppData;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/android/dialer/callintent/CallSpecificAppData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 735
    sget-object v0, Lcom/android/dialer/callintent/CallSpecificAppData;->DEFAULT_INSTANCE:Lcom/android/dialer/callintent/CallSpecificAppData;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/android/dialer/callintent/CallSpecificAppData;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/dialer/callintent/CallSpecificAppData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 742
    sget-object v0, Lcom/android/dialer/callintent/CallSpecificAppData;->DEFAULT_INSTANCE:Lcom/android/dialer/callintent/CallSpecificAppData;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/android/dialer/callintent/CallSpecificAppData;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/android/dialer/callintent/CallSpecificAppData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 760
    sget-object v0, Lcom/android/dialer/callintent/CallSpecificAppData;->DEFAULT_INSTANCE:Lcom/android/dialer/callintent/CallSpecificAppData;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/android/dialer/callintent/CallSpecificAppData;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/dialer/callintent/CallSpecificAppData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 767
    sget-object v0, Lcom/android/dialer/callintent/CallSpecificAppData;->DEFAULT_INSTANCE:Lcom/android/dialer/callintent/CallSpecificAppData;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/android/dialer/callintent/CallSpecificAppData;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/android/dialer/callintent/CallSpecificAppData;",
            ">;"
        }
    .end annotation

    .line 1646
    sget-object v0, Lcom/android/dialer/callintent/CallSpecificAppData;->DEFAULT_INSTANCE:Lcom/android/dialer/callintent/CallSpecificAppData;

    invoke-virtual {v0}, Lcom/android/dialer/callintent/CallSpecificAppData;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setCallInitiationType(Lcom/android/dialer/callintent/CallInitiationType$Type;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 51
    iget v0, p0, Lcom/android/dialer/callintent/CallSpecificAppData;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/dialer/callintent/CallSpecificAppData;->bitField0_:I

    .line 52
    invoke-virtual {p1}, Lcom/android/dialer/callintent/CallInitiationType$Type;->getNumber()I

    move-result p1

    iput p1, p0, Lcom/android/dialer/callintent/CallSpecificAppData;->callInitiationType_:I

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 49
    throw p1
.end method

.method private setCharactersInSearchString(I)V
    .locals 1

    .line 113
    iget v0, p0, Lcom/android/dialer/callintent/CallSpecificAppData;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/android/dialer/callintent/CallSpecificAppData;->bitField0_:I

    .line 114
    iput p1, p0, Lcom/android/dialer/callintent/CallSpecificAppData;->charactersInSearchString_:I

    return-void
.end method

.method private setLightbringerButtonAppearInCollapsedCallLogItemCount(I)V
    .locals 1

    .line 567
    iget v0, p0, Lcom/android/dialer/callintent/CallSpecificAppData;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/android/dialer/callintent/CallSpecificAppData;->bitField0_:I

    .line 568
    iput p1, p0, Lcom/android/dialer/callintent/CallSpecificAppData;->lightbringerButtonAppearInCollapsedCallLogItemCount_:I

    return-void
.end method

.method private setLightbringerButtonAppearInExpandedCallLogItemCount(I)V
    .locals 1

    .line 532
    iget v0, p0, Lcom/android/dialer/callintent/CallSpecificAppData;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/android/dialer/callintent/CallSpecificAppData;->bitField0_:I

    .line 533
    iput p1, p0, Lcom/android/dialer/callintent/CallSpecificAppData;->lightbringerButtonAppearInExpandedCallLogItemCount_:I

    return-void
.end method

.method private setLightbringerButtonAppearInSearchCount(I)V
    .locals 1

    .line 598
    iget v0, p0, Lcom/android/dialer/callintent/CallSpecificAppData;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/android/dialer/callintent/CallSpecificAppData;->bitField0_:I

    .line 599
    iput p1, p0, Lcom/android/dialer/callintent/CallSpecificAppData;->lightbringerButtonAppearInSearchCount_:I

    return-void
.end method

.method private setPositionOfSelectedSearchResult(I)V
    .locals 1

    .line 82
    iget v0, p0, Lcom/android/dialer/callintent/CallSpecificAppData;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/dialer/callintent/CallSpecificAppData;->bitField0_:I

    .line 83
    iput p1, p0, Lcom/android/dialer/callintent/CallSpecificAppData;->positionOfSelectedSearchResult_:I

    return-void
.end method

.method private setSpeedDialContactPosition(I)V
    .locals 1

    .line 222
    iget v0, p0, Lcom/android/dialer/callintent/CallSpecificAppData;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/android/dialer/callintent/CallSpecificAppData;->bitField0_:I

    .line 223
    iput p1, p0, Lcom/android/dialer/callintent/CallSpecificAppData;->speedDialContactPosition_:I

    return-void
.end method

.method private setSpeedDialContactType(ILcom/android/dialer/callintent/SpeedDialContactType$Type;)V
    .locals 1

    if-eqz p2, :cond_0

    .line 172
    invoke-direct {p0}, Lcom/android/dialer/callintent/CallSpecificAppData;->ensureSpeedDialContactTypeIsMutable()V

    .line 173
    iget-object v0, p0, Lcom/android/dialer/callintent/CallSpecificAppData;->speedDialContactType_:Lcom/google/protobuf/Internal$IntList;

    invoke-virtual {p2}, Lcom/android/dialer/callintent/SpeedDialContactType$Type;->getNumber()I

    move-result p2

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$IntList;->setInt(II)I

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 170
    throw p1
.end method

.method private setStartingTabIndex(I)V
    .locals 1

    .line 489
    iget v0, p0, Lcom/android/dialer/callintent/CallSpecificAppData;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/android/dialer/callintent/CallSpecificAppData;->bitField0_:I

    .line 490
    iput p1, p0, Lcom/android/dialer/callintent/CallSpecificAppData;->startingTabIndex_:I

    return-void
.end method

.method private setTimeSinceAppLaunch(J)V
    .locals 1

    .line 253
    iget v0, p0, Lcom/android/dialer/callintent/CallSpecificAppData;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/android/dialer/callintent/CallSpecificAppData;->bitField0_:I

    .line 254
    iput-wide p1, p0, Lcom/android/dialer/callintent/CallSpecificAppData;->timeSinceAppLaunch_:J

    return-void
.end method

.method private setTimeSinceFirstClick(J)V
    .locals 1

    .line 284
    iget v0, p0, Lcom/android/dialer/callintent/CallSpecificAppData;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/android/dialer/callintent/CallSpecificAppData;->bitField0_:I

    .line 285
    iput-wide p1, p0, Lcom/android/dialer/callintent/CallSpecificAppData;->timeSinceFirstClick_:J

    return-void
.end method

.method private setUiActionTimestampsSinceAppLaunch(IJ)V
    .locals 1

    .line 443
    invoke-direct {p0}, Lcom/android/dialer/callintent/CallSpecificAppData;->ensureUiActionTimestampsSinceAppLaunchIsMutable()V

    .line 444
    iget-object v0, p0, Lcom/android/dialer/callintent/CallSpecificAppData;->uiActionTimestampsSinceAppLaunch_:Lcom/google/protobuf/Internal$LongList;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/protobuf/Internal$LongList;->setLong(IJ)J

    return-void
.end method

.method private setUiActionsSinceAppLaunch(ILcom/android/dialer/logging/UiAction$Type;)V
    .locals 1

    if-eqz p2, :cond_0

    .line 363
    invoke-direct {p0}, Lcom/android/dialer/callintent/CallSpecificAppData;->ensureUiActionsSinceAppLaunchIsMutable()V

    .line 364
    iget-object v0, p0, Lcom/android/dialer/callintent/CallSpecificAppData;->uiActionsSinceAppLaunch_:Lcom/google/protobuf/Internal$IntList;

    invoke-virtual {p2}, Lcom/android/dialer/logging/UiAction$Type;->getNumber()I

    move-result p2

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$IntList;->setInt(II)I

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 361
    throw p1
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1370
    sget-object v0, Lcom/android/dialer/callintent/CallSpecificAppData$3;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_0

    .line 1627
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object v0

    .line 1621
    :pswitch_1
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 1608
    :pswitch_2
    sget-object p1, Lcom/android/dialer/callintent/CallSpecificAppData;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 1610
    const-class p2, Lcom/android/dialer/callintent/CallSpecificAppData;

    monitor-enter p2

    .line 1611
    :try_start_0
    sget-object p1, Lcom/android/dialer/callintent/CallSpecificAppData;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 1613
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/android/dialer/callintent/CallSpecificAppData;->DEFAULT_INSTANCE:Lcom/android/dialer/callintent/CallSpecificAppData;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 1614
    sput-object p1, Lcom/android/dialer/callintent/CallSpecificAppData;->PARSER:Lcom/google/protobuf/Parser;

    .line 1616
    :cond_0
    monitor-exit p2

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    :goto_0
    return-object p1

    .line 1428
    :pswitch_3
    check-cast p2, Lcom/google/protobuf/CodedInputStream;

    .line 1430
    check-cast p3, Lcom/google/protobuf/ExtensionRegistryLite;

    if-eqz p3, :cond_12

    const/4 p1, 0x0

    :cond_2
    :goto_1
    if-nez p1, :cond_11

    .line 1438
    :try_start_1
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result p3

    const/16 v0, 0x8

    const/4 v2, 0x4

    sparse-switch p3, :sswitch_data_0

    .line 1587
    invoke-virtual {p0, p3, p2}, Lcom/android/dialer/callintent/CallSpecificAppData;->parseUnknownField(ILcom/google/protobuf/CodedInputStream;)Z

    move-result p3

    goto/16 :goto_6

    .line 1582
    :sswitch_0
    iget p3, p0, Lcom/android/dialer/callintent/CallSpecificAppData;->bitField0_:I

    or-int/lit16 p3, p3, 0x200

    iput p3, p0, Lcom/android/dialer/callintent/CallSpecificAppData;->bitField0_:I

    .line 1583
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result p3

    iput p3, p0, Lcom/android/dialer/callintent/CallSpecificAppData;->lightbringerButtonAppearInSearchCount_:I

    goto :goto_1

    .line 1577
    :sswitch_1
    iget p3, p0, Lcom/android/dialer/callintent/CallSpecificAppData;->bitField0_:I

    or-int/lit16 p3, p3, 0x100

    iput p3, p0, Lcom/android/dialer/callintent/CallSpecificAppData;->bitField0_:I

    .line 1578
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result p3

    iput p3, p0, Lcom/android/dialer/callintent/CallSpecificAppData;->lightbringerButtonAppearInCollapsedCallLogItemCount_:I

    goto :goto_1

    .line 1572
    :sswitch_2
    iget p3, p0, Lcom/android/dialer/callintent/CallSpecificAppData;->bitField0_:I

    or-int/lit16 p3, p3, 0x80

    iput p3, p0, Lcom/android/dialer/callintent/CallSpecificAppData;->bitField0_:I

    .line 1573
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result p3

    iput p3, p0, Lcom/android/dialer/callintent/CallSpecificAppData;->lightbringerButtonAppearInExpandedCallLogItemCount_:I

    goto :goto_1

    .line 1567
    :sswitch_3
    iget p3, p0, Lcom/android/dialer/callintent/CallSpecificAppData;->bitField0_:I

    or-int/lit8 p3, p3, 0x40

    iput p3, p0, Lcom/android/dialer/callintent/CallSpecificAppData;->bitField0_:I

    .line 1568
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result p3

    iput p3, p0, Lcom/android/dialer/callintent/CallSpecificAppData;->startingTabIndex_:I

    goto :goto_1

    .line 1554
    :sswitch_4
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readRawVarint32()I

    move-result p3

    .line 1555
    invoke-virtual {p2, p3}, Lcom/google/protobuf/CodedInputStream;->pushLimit(I)I

    move-result p3

    .line 1556
    iget-object v0, p0, Lcom/android/dialer/callintent/CallSpecificAppData;->uiActionTimestampsSinceAppLaunch_:Lcom/google/protobuf/Internal$LongList;

    invoke-interface {v0}, Lcom/google/protobuf/Internal$LongList;->isModifiable()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->getBytesUntilLimit()I

    move-result v0

    if-lez v0, :cond_3

    .line 1557
    iget-object v0, p0, Lcom/android/dialer/callintent/CallSpecificAppData;->uiActionTimestampsSinceAppLaunch_:Lcom/google/protobuf/Internal$LongList;

    .line 1558
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$LongList;)Lcom/google/protobuf/Internal$LongList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/callintent/CallSpecificAppData;->uiActionTimestampsSinceAppLaunch_:Lcom/google/protobuf/Internal$LongList;

    .line 1560
    :cond_3
    :goto_2
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->getBytesUntilLimit()I

    move-result v0

    if-lez v0, :cond_4

    .line 1561
    iget-object v0, p0, Lcom/android/dialer/callintent/CallSpecificAppData;->uiActionTimestampsSinceAppLaunch_:Lcom/google/protobuf/Internal$LongList;

    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v2

    invoke-interface {v0, v2, v3}, Lcom/google/protobuf/Internal$LongList;->addLong(J)V

    goto :goto_2

    .line 1563
    :cond_4
    invoke-virtual {p2, p3}, Lcom/google/protobuf/CodedInputStream;->popLimit(I)V

    goto :goto_1

    .line 1546
    :sswitch_5
    iget-object p3, p0, Lcom/android/dialer/callintent/CallSpecificAppData;->uiActionTimestampsSinceAppLaunch_:Lcom/google/protobuf/Internal$LongList;

    invoke-interface {p3}, Lcom/google/protobuf/Internal$LongList;->isModifiable()Z

    move-result p3

    if-nez p3, :cond_5

    .line 1547
    iget-object p3, p0, Lcom/android/dialer/callintent/CallSpecificAppData;->uiActionTimestampsSinceAppLaunch_:Lcom/google/protobuf/Internal$LongList;

    .line 1548
    invoke-static {p3}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$LongList;)Lcom/google/protobuf/Internal$LongList;

    move-result-object p3

    iput-object p3, p0, Lcom/android/dialer/callintent/CallSpecificAppData;->uiActionTimestampsSinceAppLaunch_:Lcom/google/protobuf/Internal$LongList;

    .line 1550
    :cond_5
    iget-object p3, p0, Lcom/android/dialer/callintent/CallSpecificAppData;->uiActionTimestampsSinceAppLaunch_:Lcom/google/protobuf/Internal$LongList;

    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v2

    invoke-interface {p3, v2, v3}, Lcom/google/protobuf/Internal$LongList;->addLong(J)V

    goto/16 :goto_1

    .line 1527
    :sswitch_6
    iget-object p3, p0, Lcom/android/dialer/callintent/CallSpecificAppData;->uiActionsSinceAppLaunch_:Lcom/google/protobuf/Internal$IntList;

    invoke-interface {p3}, Lcom/google/protobuf/Internal$IntList;->isModifiable()Z

    move-result p3

    if-nez p3, :cond_6

    .line 1528
    iget-object p3, p0, Lcom/android/dialer/callintent/CallSpecificAppData;->uiActionsSinceAppLaunch_:Lcom/google/protobuf/Internal$IntList;

    .line 1529
    invoke-static {p3}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$IntList;)Lcom/google/protobuf/Internal$IntList;

    move-result-object p3

    iput-object p3, p0, Lcom/android/dialer/callintent/CallSpecificAppData;->uiActionsSinceAppLaunch_:Lcom/google/protobuf/Internal$IntList;

    .line 1531
    :cond_6
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readRawVarint32()I

    move-result p3

    .line 1532
    invoke-virtual {p2, p3}, Lcom/google/protobuf/CodedInputStream;->pushLimit(I)I

    move-result p3

    .line 1533
    :goto_3
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->getBytesUntilLimit()I

    move-result v2

    if-lez v2, :cond_8

    .line 1534
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v2

    .line 1535
    invoke-static {v2}, Lcom/android/dialer/logging/UiAction$Type;->forNumber(I)Lcom/android/dialer/logging/UiAction$Type;

    move-result-object v3

    if-nez v3, :cond_7

    .line 1537
    invoke-super {p0, v0, v2}, Lcom/google/protobuf/GeneratedMessageLite;->mergeVarintField(II)V

    goto :goto_3

    .line 1539
    :cond_7
    iget-object v3, p0, Lcom/android/dialer/callintent/CallSpecificAppData;->uiActionsSinceAppLaunch_:Lcom/google/protobuf/Internal$IntList;

    invoke-interface {v3, v2}, Lcom/google/protobuf/Internal$IntList;->addInt(I)V

    goto :goto_3

    .line 1542
    :cond_8
    invoke-virtual {p2, p3}, Lcom/google/protobuf/CodedInputStream;->popLimit(I)V

    goto/16 :goto_1

    .line 1513
    :sswitch_7
    iget-object p3, p0, Lcom/android/dialer/callintent/CallSpecificAppData;->uiActionsSinceAppLaunch_:Lcom/google/protobuf/Internal$IntList;

    invoke-interface {p3}, Lcom/google/protobuf/Internal$IntList;->isModifiable()Z

    move-result p3

    if-nez p3, :cond_9

    .line 1514
    iget-object p3, p0, Lcom/android/dialer/callintent/CallSpecificAppData;->uiActionsSinceAppLaunch_:Lcom/google/protobuf/Internal$IntList;

    .line 1515
    invoke-static {p3}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$IntList;)Lcom/google/protobuf/Internal$IntList;

    move-result-object p3

    iput-object p3, p0, Lcom/android/dialer/callintent/CallSpecificAppData;->uiActionsSinceAppLaunch_:Lcom/google/protobuf/Internal$IntList;

    .line 1517
    :cond_9
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result p3

    .line 1518
    invoke-static {p3}, Lcom/android/dialer/logging/UiAction$Type;->forNumber(I)Lcom/android/dialer/logging/UiAction$Type;

    move-result-object v2

    if-nez v2, :cond_a

    .line 1520
    invoke-super {p0, v0, p3}, Lcom/google/protobuf/GeneratedMessageLite;->mergeVarintField(II)V

    goto/16 :goto_1

    .line 1522
    :cond_a
    iget-object v0, p0, Lcom/android/dialer/callintent/CallSpecificAppData;->uiActionsSinceAppLaunch_:Lcom/google/protobuf/Internal$IntList;

    invoke-interface {v0, p3}, Lcom/google/protobuf/Internal$IntList;->addInt(I)V

    goto/16 :goto_1

    .line 1508
    :sswitch_8
    iget p3, p0, Lcom/android/dialer/callintent/CallSpecificAppData;->bitField0_:I

    or-int/lit8 p3, p3, 0x20

    iput p3, p0, Lcom/android/dialer/callintent/CallSpecificAppData;->bitField0_:I

    .line 1509
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/dialer/callintent/CallSpecificAppData;->timeSinceFirstClick_:J

    goto/16 :goto_1

    .line 1503
    :sswitch_9
    iget p3, p0, Lcom/android/dialer/callintent/CallSpecificAppData;->bitField0_:I

    or-int/lit8 p3, p3, 0x10

    iput p3, p0, Lcom/android/dialer/callintent/CallSpecificAppData;->bitField0_:I

    .line 1504
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/dialer/callintent/CallSpecificAppData;->timeSinceAppLaunch_:J

    goto/16 :goto_1

    .line 1498
    :sswitch_a
    iget p3, p0, Lcom/android/dialer/callintent/CallSpecificAppData;->bitField0_:I

    or-int/2addr p3, v0

    iput p3, p0, Lcom/android/dialer/callintent/CallSpecificAppData;->bitField0_:I

    .line 1499
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result p3

    iput p3, p0, Lcom/android/dialer/callintent/CallSpecificAppData;->speedDialContactPosition_:I

    goto/16 :goto_1

    .line 1479
    :sswitch_b
    iget-object p3, p0, Lcom/android/dialer/callintent/CallSpecificAppData;->speedDialContactType_:Lcom/google/protobuf/Internal$IntList;

    invoke-interface {p3}, Lcom/google/protobuf/Internal$IntList;->isModifiable()Z

    move-result p3

    if-nez p3, :cond_b

    .line 1480
    iget-object p3, p0, Lcom/android/dialer/callintent/CallSpecificAppData;->speedDialContactType_:Lcom/google/protobuf/Internal$IntList;

    .line 1481
    invoke-static {p3}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$IntList;)Lcom/google/protobuf/Internal$IntList;

    move-result-object p3

    iput-object p3, p0, Lcom/android/dialer/callintent/CallSpecificAppData;->speedDialContactType_:Lcom/google/protobuf/Internal$IntList;

    .line 1483
    :cond_b
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readRawVarint32()I

    move-result p3

    .line 1484
    invoke-virtual {p2, p3}, Lcom/google/protobuf/CodedInputStream;->pushLimit(I)I

    move-result p3

    .line 1485
    :goto_4
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->getBytesUntilLimit()I

    move-result v0

    if-lez v0, :cond_d

    .line 1486
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 1487
    invoke-static {v0}, Lcom/android/dialer/callintent/SpeedDialContactType$Type;->forNumber(I)Lcom/android/dialer/callintent/SpeedDialContactType$Type;

    move-result-object v3

    if-nez v3, :cond_c

    .line 1489
    invoke-super {p0, v2, v0}, Lcom/google/protobuf/GeneratedMessageLite;->mergeVarintField(II)V

    goto :goto_4

    .line 1491
    :cond_c
    iget-object v3, p0, Lcom/android/dialer/callintent/CallSpecificAppData;->speedDialContactType_:Lcom/google/protobuf/Internal$IntList;

    invoke-interface {v3, v0}, Lcom/google/protobuf/Internal$IntList;->addInt(I)V

    goto :goto_4

    .line 1494
    :cond_d
    invoke-virtual {p2, p3}, Lcom/google/protobuf/CodedInputStream;->popLimit(I)V

    goto/16 :goto_1

    .line 1465
    :sswitch_c
    iget-object p3, p0, Lcom/android/dialer/callintent/CallSpecificAppData;->speedDialContactType_:Lcom/google/protobuf/Internal$IntList;

    invoke-interface {p3}, Lcom/google/protobuf/Internal$IntList;->isModifiable()Z

    move-result p3

    if-nez p3, :cond_e

    .line 1466
    iget-object p3, p0, Lcom/android/dialer/callintent/CallSpecificAppData;->speedDialContactType_:Lcom/google/protobuf/Internal$IntList;

    .line 1467
    invoke-static {p3}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$IntList;)Lcom/google/protobuf/Internal$IntList;

    move-result-object p3

    iput-object p3, p0, Lcom/android/dialer/callintent/CallSpecificAppData;->speedDialContactType_:Lcom/google/protobuf/Internal$IntList;

    .line 1469
    :cond_e
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result p3

    .line 1470
    invoke-static {p3}, Lcom/android/dialer/callintent/SpeedDialContactType$Type;->forNumber(I)Lcom/android/dialer/callintent/SpeedDialContactType$Type;

    move-result-object v0

    if-nez v0, :cond_f

    .line 1472
    invoke-super {p0, v2, p3}, Lcom/google/protobuf/GeneratedMessageLite;->mergeVarintField(II)V

    goto/16 :goto_1

    .line 1474
    :cond_f
    iget-object v0, p0, Lcom/android/dialer/callintent/CallSpecificAppData;->speedDialContactType_:Lcom/google/protobuf/Internal$IntList;

    invoke-interface {v0, p3}, Lcom/google/protobuf/Internal$IntList;->addInt(I)V

    goto/16 :goto_1

    .line 1460
    :sswitch_d
    iget p3, p0, Lcom/android/dialer/callintent/CallSpecificAppData;->bitField0_:I

    or-int/2addr p3, v2

    iput p3, p0, Lcom/android/dialer/callintent/CallSpecificAppData;->bitField0_:I

    .line 1461
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result p3

    iput p3, p0, Lcom/android/dialer/callintent/CallSpecificAppData;->charactersInSearchString_:I

    goto/16 :goto_1

    .line 1455
    :sswitch_e
    iget p3, p0, Lcom/android/dialer/callintent/CallSpecificAppData;->bitField0_:I

    or-int/lit8 p3, p3, 0x2

    iput p3, p0, Lcom/android/dialer/callintent/CallSpecificAppData;->bitField0_:I

    .line 1456
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result p3

    iput p3, p0, Lcom/android/dialer/callintent/CallSpecificAppData;->positionOfSelectedSearchResult_:I

    goto/16 :goto_1

    .line 1444
    :sswitch_f
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result p3

    .line 1445
    invoke-static {p3}, Lcom/android/dialer/callintent/CallInitiationType$Type;->forNumber(I)Lcom/android/dialer/callintent/CallInitiationType$Type;

    move-result-object v0

    if-nez v0, :cond_10

    .line 1447
    invoke-super {p0, v1, p3}, Lcom/google/protobuf/GeneratedMessageLite;->mergeVarintField(II)V

    goto/16 :goto_1

    .line 1449
    :cond_10
    iget v0, p0, Lcom/android/dialer/callintent/CallSpecificAppData;->bitField0_:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/android/dialer/callintent/CallSpecificAppData;->bitField0_:I

    .line 1450
    iput p3, p0, Lcom/android/dialer/callintent/CallSpecificAppData;->callInitiationType_:I
    :try_end_1
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/16 :goto_1

    :goto_5
    :sswitch_10
    move p1, v1

    goto/16 :goto_1

    :goto_6
    if-nez p3, :cond_2

    goto :goto_5

    :catchall_1
    move-exception p1

    goto :goto_7

    :catch_0
    move-exception p1

    .line 1597
    :try_start_2
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, Lcom/google/protobuf/InvalidProtocolBufferException;

    .line 1599
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 1595
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1601
    :goto_7
    throw p1

    .line 1605
    :cond_11
    :pswitch_4
    sget-object p1, Lcom/android/dialer/callintent/CallSpecificAppData;->DEFAULT_INSTANCE:Lcom/android/dialer/callintent/CallSpecificAppData;

    return-object p1

    .line 1433
    :cond_12
    throw v0

    .line 1387
    :pswitch_5
    check-cast p2, Lcom/google/protobuf/GeneratedMessageLite$Visitor;

    .line 1388
    check-cast p3, Lcom/android/dialer/callintent/CallSpecificAppData;

    .line 1389
    invoke-virtual {p0}, Lcom/android/dialer/callintent/CallSpecificAppData;->hasCallInitiationType()Z

    move-result p1

    iget v0, p0, Lcom/android/dialer/callintent/CallSpecificAppData;->callInitiationType_:I

    .line 1390
    invoke-virtual {p3}, Lcom/android/dialer/callintent/CallSpecificAppData;->hasCallInitiationType()Z

    move-result v1

    iget v2, p3, Lcom/android/dialer/callintent/CallSpecificAppData;->callInitiationType_:I

    .line 1389
    invoke-interface {p2, p1, v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Lcom/android/dialer/callintent/CallSpecificAppData;->callInitiationType_:I

    .line 1392
    invoke-virtual {p0}, Lcom/android/dialer/callintent/CallSpecificAppData;->hasPositionOfSelectedSearchResult()Z

    move-result p1

    iget v0, p0, Lcom/android/dialer/callintent/CallSpecificAppData;->positionOfSelectedSearchResult_:I

    .line 1393
    invoke-virtual {p3}, Lcom/android/dialer/callintent/CallSpecificAppData;->hasPositionOfSelectedSearchResult()Z

    move-result v1

    iget v2, p3, Lcom/android/dialer/callintent/CallSpecificAppData;->positionOfSelectedSearchResult_:I

    .line 1391
    invoke-interface {p2, p1, v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Lcom/android/dialer/callintent/CallSpecificAppData;->positionOfSelectedSearchResult_:I

    .line 1395
    invoke-virtual {p0}, Lcom/android/dialer/callintent/CallSpecificAppData;->hasCharactersInSearchString()Z

    move-result p1

    iget v0, p0, Lcom/android/dialer/callintent/CallSpecificAppData;->charactersInSearchString_:I

    .line 1396
    invoke-virtual {p3}, Lcom/android/dialer/callintent/CallSpecificAppData;->hasCharactersInSearchString()Z

    move-result v1

    iget v2, p3, Lcom/android/dialer/callintent/CallSpecificAppData;->charactersInSearchString_:I

    .line 1394
    invoke-interface {p2, p1, v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Lcom/android/dialer/callintent/CallSpecificAppData;->charactersInSearchString_:I

    .line 1397
    iget-object p1, p0, Lcom/android/dialer/callintent/CallSpecificAppData;->speedDialContactType_:Lcom/google/protobuf/Internal$IntList;

    iget-object v0, p3, Lcom/android/dialer/callintent/CallSpecificAppData;->speedDialContactType_:Lcom/google/protobuf/Internal$IntList;

    invoke-interface {p2, p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitIntList(Lcom/google/protobuf/Internal$IntList;Lcom/google/protobuf/Internal$IntList;)Lcom/google/protobuf/Internal$IntList;

    move-result-object p1

    iput-object p1, p0, Lcom/android/dialer/callintent/CallSpecificAppData;->speedDialContactType_:Lcom/google/protobuf/Internal$IntList;

    .line 1399
    invoke-virtual {p0}, Lcom/android/dialer/callintent/CallSpecificAppData;->hasSpeedDialContactPosition()Z

    move-result p1

    iget v0, p0, Lcom/android/dialer/callintent/CallSpecificAppData;->speedDialContactPosition_:I

    .line 1400
    invoke-virtual {p3}, Lcom/android/dialer/callintent/CallSpecificAppData;->hasSpeedDialContactPosition()Z

    move-result v1

    iget v2, p3, Lcom/android/dialer/callintent/CallSpecificAppData;->speedDialContactPosition_:I

    .line 1398
    invoke-interface {p2, p1, v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Lcom/android/dialer/callintent/CallSpecificAppData;->speedDialContactPosition_:I

    .line 1402
    invoke-virtual {p0}, Lcom/android/dialer/callintent/CallSpecificAppData;->hasTimeSinceAppLaunch()Z

    move-result v1

    iget-wide v2, p0, Lcom/android/dialer/callintent/CallSpecificAppData;->timeSinceAppLaunch_:J

    .line 1403
    invoke-virtual {p3}, Lcom/android/dialer/callintent/CallSpecificAppData;->hasTimeSinceAppLaunch()Z

    move-result v4

    iget-wide v5, p3, Lcom/android/dialer/callintent/CallSpecificAppData;->timeSinceAppLaunch_:J

    move-object v0, p2

    .line 1401
    invoke-interface/range {v0 .. v6}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitLong(ZJZJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/dialer/callintent/CallSpecificAppData;->timeSinceAppLaunch_:J

    .line 1405
    invoke-virtual {p0}, Lcom/android/dialer/callintent/CallSpecificAppData;->hasTimeSinceFirstClick()Z

    move-result v1

    iget-wide v2, p0, Lcom/android/dialer/callintent/CallSpecificAppData;->timeSinceFirstClick_:J

    .line 1406
    invoke-virtual {p3}, Lcom/android/dialer/callintent/CallSpecificAppData;->hasTimeSinceFirstClick()Z

    move-result v4

    iget-wide v5, p3, Lcom/android/dialer/callintent/CallSpecificAppData;->timeSinceFirstClick_:J

    move-object v0, p2

    .line 1404
    invoke-interface/range {v0 .. v6}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitLong(ZJZJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/dialer/callintent/CallSpecificAppData;->timeSinceFirstClick_:J

    .line 1407
    iget-object p1, p0, Lcom/android/dialer/callintent/CallSpecificAppData;->uiActionsSinceAppLaunch_:Lcom/google/protobuf/Internal$IntList;

    iget-object v0, p3, Lcom/android/dialer/callintent/CallSpecificAppData;->uiActionsSinceAppLaunch_:Lcom/google/protobuf/Internal$IntList;

    invoke-interface {p2, p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitIntList(Lcom/google/protobuf/Internal$IntList;Lcom/google/protobuf/Internal$IntList;)Lcom/google/protobuf/Internal$IntList;

    move-result-object p1

    iput-object p1, p0, Lcom/android/dialer/callintent/CallSpecificAppData;->uiActionsSinceAppLaunch_:Lcom/google/protobuf/Internal$IntList;

    .line 1408
    iget-object p1, p0, Lcom/android/dialer/callintent/CallSpecificAppData;->uiActionTimestampsSinceAppLaunch_:Lcom/google/protobuf/Internal$LongList;

    iget-object v0, p3, Lcom/android/dialer/callintent/CallSpecificAppData;->uiActionTimestampsSinceAppLaunch_:Lcom/google/protobuf/Internal$LongList;

    invoke-interface {p2, p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitLongList(Lcom/google/protobuf/Internal$LongList;Lcom/google/protobuf/Internal$LongList;)Lcom/google/protobuf/Internal$LongList;

    move-result-object p1

    iput-object p1, p0, Lcom/android/dialer/callintent/CallSpecificAppData;->uiActionTimestampsSinceAppLaunch_:Lcom/google/protobuf/Internal$LongList;

    .line 1410
    invoke-virtual {p0}, Lcom/android/dialer/callintent/CallSpecificAppData;->hasStartingTabIndex()Z

    move-result p1

    iget v0, p0, Lcom/android/dialer/callintent/CallSpecificAppData;->startingTabIndex_:I

    .line 1411
    invoke-virtual {p3}, Lcom/android/dialer/callintent/CallSpecificAppData;->hasStartingTabIndex()Z

    move-result v1

    iget v2, p3, Lcom/android/dialer/callintent/CallSpecificAppData;->startingTabIndex_:I

    .line 1409
    invoke-interface {p2, p1, v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Lcom/android/dialer/callintent/CallSpecificAppData;->startingTabIndex_:I

    .line 1413
    invoke-virtual {p0}, Lcom/android/dialer/callintent/CallSpecificAppData;->hasLightbringerButtonAppearInExpandedCallLogItemCount()Z

    move-result p1

    iget v0, p0, Lcom/android/dialer/callintent/CallSpecificAppData;->lightbringerButtonAppearInExpandedCallLogItemCount_:I

    .line 1414
    invoke-virtual {p3}, Lcom/android/dialer/callintent/CallSpecificAppData;->hasLightbringerButtonAppearInExpandedCallLogItemCount()Z

    move-result v1

    iget v2, p3, Lcom/android/dialer/callintent/CallSpecificAppData;->lightbringerButtonAppearInExpandedCallLogItemCount_:I

    .line 1412
    invoke-interface {p2, p1, v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Lcom/android/dialer/callintent/CallSpecificAppData;->lightbringerButtonAppearInExpandedCallLogItemCount_:I

    .line 1416
    invoke-virtual {p0}, Lcom/android/dialer/callintent/CallSpecificAppData;->hasLightbringerButtonAppearInCollapsedCallLogItemCount()Z

    move-result p1

    iget v0, p0, Lcom/android/dialer/callintent/CallSpecificAppData;->lightbringerButtonAppearInCollapsedCallLogItemCount_:I

    .line 1417
    invoke-virtual {p3}, Lcom/android/dialer/callintent/CallSpecificAppData;->hasLightbringerButtonAppearInCollapsedCallLogItemCount()Z

    move-result v1

    iget v2, p3, Lcom/android/dialer/callintent/CallSpecificAppData;->lightbringerButtonAppearInCollapsedCallLogItemCount_:I

    .line 1415
    invoke-interface {p2, p1, v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Lcom/android/dialer/callintent/CallSpecificAppData;->lightbringerButtonAppearInCollapsedCallLogItemCount_:I

    .line 1419
    invoke-virtual {p0}, Lcom/android/dialer/callintent/CallSpecificAppData;->hasLightbringerButtonAppearInSearchCount()Z

    move-result p1

    iget v0, p0, Lcom/android/dialer/callintent/CallSpecificAppData;->lightbringerButtonAppearInSearchCount_:I

    .line 1420
    invoke-virtual {p3}, Lcom/android/dialer/callintent/CallSpecificAppData;->hasLightbringerButtonAppearInSearchCount()Z

    move-result v1

    iget v2, p3, Lcom/android/dialer/callintent/CallSpecificAppData;->lightbringerButtonAppearInSearchCount_:I

    .line 1418
    invoke-interface {p2, p1, v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Lcom/android/dialer/callintent/CallSpecificAppData;->lightbringerButtonAppearInSearchCount_:I

    .line 1421
    sget-object p1, Lcom/google/protobuf/GeneratedMessageLite$MergeFromVisitor;->INSTANCE:Lcom/google/protobuf/GeneratedMessageLite$MergeFromVisitor;

    if-ne p2, p1, :cond_13

    .line 1423
    iget p1, p0, Lcom/android/dialer/callintent/CallSpecificAppData;->bitField0_:I

    iget p2, p3, Lcom/android/dialer/callintent/CallSpecificAppData;->bitField0_:I

    or-int/2addr p1, p2

    iput p1, p0, Lcom/android/dialer/callintent/CallSpecificAppData;->bitField0_:I

    :cond_13
    return-object p0

    .line 1381
    :pswitch_6
    iget-object p1, p0, Lcom/android/dialer/callintent/CallSpecificAppData;->speedDialContactType_:Lcom/google/protobuf/Internal$IntList;

    invoke-interface {p1}, Lcom/google/protobuf/Internal$IntList;->makeImmutable()V

    .line 1382
    iget-object p1, p0, Lcom/android/dialer/callintent/CallSpecificAppData;->uiActionsSinceAppLaunch_:Lcom/google/protobuf/Internal$IntList;

    invoke-interface {p1}, Lcom/google/protobuf/Internal$IntList;->makeImmutable()V

    .line 1383
    iget-object p1, p0, Lcom/android/dialer/callintent/CallSpecificAppData;->uiActionTimestampsSinceAppLaunch_:Lcom/google/protobuf/Internal$LongList;

    invoke-interface {p1}, Lcom/google/protobuf/Internal$LongList;->makeImmutable()V

    return-object v0

    .line 1378
    :pswitch_7
    sget-object p1, Lcom/android/dialer/callintent/CallSpecificAppData;->DEFAULT_INSTANCE:Lcom/android/dialer/callintent/CallSpecificAppData;

    return-object p1

    .line 1375
    :pswitch_8
    new-instance p1, Lcom/android/dialer/callintent/CallSpecificAppData$Builder;

    invoke-direct {p1, v0}, Lcom/android/dialer/callintent/CallSpecificAppData$Builder;-><init>(Lcom/android/dialer/callintent/CallSpecificAppData$1;)V

    return-object p1

    .line 1372
    :pswitch_9
    new-instance p1, Lcom/android/dialer/callintent/CallSpecificAppData;

    invoke-direct {p1}, Lcom/android/dialer/callintent/CallSpecificAppData;-><init>()V

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_10
        0x8 -> :sswitch_f
        0x10 -> :sswitch_e
        0x18 -> :sswitch_d
        0x20 -> :sswitch_c
        0x22 -> :sswitch_b
        0x28 -> :sswitch_a
        0x30 -> :sswitch_9
        0x38 -> :sswitch_8
        0x40 -> :sswitch_7
        0x42 -> :sswitch_6
        0x48 -> :sswitch_5
        0x4a -> :sswitch_4
        0x50 -> :sswitch_3
        0x58 -> :sswitch_2
        0x60 -> :sswitch_1
        0x68 -> :sswitch_0
    .end sparse-switch
.end method

.method public getCallInitiationType()Lcom/android/dialer/callintent/CallInitiationType$Type;
    .locals 1

    .line 41
    iget v0, p0, Lcom/android/dialer/callintent/CallSpecificAppData;->callInitiationType_:I

    invoke-static {v0}, Lcom/android/dialer/callintent/CallInitiationType$Type;->forNumber(I)Lcom/android/dialer/callintent/CallInitiationType$Type;

    move-result-object v0

    if-nez v0, :cond_0

    .line 42
    sget-object v0, Lcom/android/dialer/callintent/CallInitiationType$Type;->UNKNOWN_INITIATION:Lcom/android/dialer/callintent/CallInitiationType$Type;

    :cond_0
    return-object v0
.end method

.method public getCharactersInSearchString()I
    .locals 1

    .line 107
    iget v0, p0, Lcom/android/dialer/callintent/CallSpecificAppData;->charactersInSearchString_:I

    return v0
.end method

.method public getLightbringerButtonAppearInCollapsedCallLogItemCount()I
    .locals 1

    .line 561
    iget v0, p0, Lcom/android/dialer/callintent/CallSpecificAppData;->lightbringerButtonAppearInCollapsedCallLogItemCount_:I

    return v0
.end method

.method public getLightbringerButtonAppearInExpandedCallLogItemCount()I
    .locals 1

    .line 522
    iget v0, p0, Lcom/android/dialer/callintent/CallSpecificAppData;->lightbringerButtonAppearInExpandedCallLogItemCount_:I

    return v0
.end method

.method public getLightbringerButtonAppearInSearchCount()I
    .locals 1

    .line 592
    iget v0, p0, Lcom/android/dialer/callintent/CallSpecificAppData;->lightbringerButtonAppearInSearchCount_:I

    return v0
.end method

.method public getPositionOfSelectedSearchResult()I
    .locals 1

    .line 76
    iget v0, p0, Lcom/android/dialer/callintent/CallSpecificAppData;->positionOfSelectedSearchResult_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 6

    .line 656
    iget v0, p0, Lcom/android/dialer/callintent/CallSpecificAppData;->memoizedSerializedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 660
    :cond_0
    iget v0, p0, Lcom/android/dialer/callintent/CallSpecificAppData;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 661
    iget v0, p0, Lcom/android/dialer/callintent/CallSpecificAppData;->callInitiationType_:I

    .line 662
    invoke-static {v1, v0}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v0

    add-int/2addr v0, v2

    goto :goto_0

    :cond_1
    move v0, v2

    .line 664
    :goto_0
    iget v3, p0, Lcom/android/dialer/callintent/CallSpecificAppData;->bitField0_:I

    const/4 v4, 0x2

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_2

    .line 665
    iget v3, p0, Lcom/android/dialer/callintent/CallSpecificAppData;->positionOfSelectedSearchResult_:I

    .line 666
    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v0, v3

    .line 668
    :cond_2
    iget v3, p0, Lcom/android/dialer/callintent/CallSpecificAppData;->bitField0_:I

    const/4 v4, 0x4

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_3

    const/4 v3, 0x3

    .line 669
    iget v4, p0, Lcom/android/dialer/callintent/CallSpecificAppData;->charactersInSearchString_:I

    .line 670
    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v0, v3

    :cond_3
    move v3, v2

    move v4, v3

    .line 674
    :goto_1
    iget-object v5, p0, Lcom/android/dialer/callintent/CallSpecificAppData;->speedDialContactType_:Lcom/google/protobuf/Internal$IntList;

    invoke-interface {v5}, Lcom/google/protobuf/Internal$IntList;->size()I

    move-result v5

    if-ge v3, v5, :cond_4

    .line 675
    iget-object v5, p0, Lcom/android/dialer/callintent/CallSpecificAppData;->speedDialContactType_:Lcom/google/protobuf/Internal$IntList;

    .line 676
    invoke-interface {v5, v3}, Lcom/google/protobuf/Internal$IntList;->getInt(I)I

    move-result v5

    invoke-static {v5}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSizeNoTag(I)I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    add-int/2addr v0, v4

    .line 679
    iget-object v3, p0, Lcom/android/dialer/callintent/CallSpecificAppData;->speedDialContactType_:Lcom/google/protobuf/Internal$IntList;

    invoke-interface {v3}, Lcom/google/protobuf/Internal$IntList;->size()I

    move-result v3

    mul-int/2addr v3, v1

    add-int/2addr v0, v3

    .line 681
    iget v3, p0, Lcom/android/dialer/callintent/CallSpecificAppData;->bitField0_:I

    const/16 v4, 0x8

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_5

    const/4 v3, 0x5

    .line 682
    iget v4, p0, Lcom/android/dialer/callintent/CallSpecificAppData;->speedDialContactPosition_:I

    .line 683
    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v0, v3

    .line 685
    :cond_5
    iget v3, p0, Lcom/android/dialer/callintent/CallSpecificAppData;->bitField0_:I

    const/16 v4, 0x10

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_6

    const/4 v3, 0x6

    .line 686
    iget-wide v4, p0, Lcom/android/dialer/callintent/CallSpecificAppData;->timeSinceAppLaunch_:J

    .line 687
    invoke-static {v3, v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v3

    add-int/2addr v0, v3

    .line 689
    :cond_6
    iget v3, p0, Lcom/android/dialer/callintent/CallSpecificAppData;->bitField0_:I

    const/16 v4, 0x20

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_7

    const/4 v3, 0x7

    .line 690
    iget-wide v4, p0, Lcom/android/dialer/callintent/CallSpecificAppData;->timeSinceFirstClick_:J

    .line 691
    invoke-static {v3, v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v3

    add-int/2addr v0, v3

    :cond_7
    move v3, v2

    move v4, v3

    .line 695
    :goto_2
    iget-object v5, p0, Lcom/android/dialer/callintent/CallSpecificAppData;->uiActionsSinceAppLaunch_:Lcom/google/protobuf/Internal$IntList;

    invoke-interface {v5}, Lcom/google/protobuf/Internal$IntList;->size()I

    move-result v5

    if-ge v3, v5, :cond_8

    .line 696
    iget-object v5, p0, Lcom/android/dialer/callintent/CallSpecificAppData;->uiActionsSinceAppLaunch_:Lcom/google/protobuf/Internal$IntList;

    .line 697
    invoke-interface {v5, v3}, Lcom/google/protobuf/Internal$IntList;->getInt(I)I

    move-result v5

    invoke-static {v5}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSizeNoTag(I)I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_8
    add-int/2addr v0, v4

    .line 700
    iget-object v3, p0, Lcom/android/dialer/callintent/CallSpecificAppData;->uiActionsSinceAppLaunch_:Lcom/google/protobuf/Internal$IntList;

    invoke-interface {v3}, Lcom/google/protobuf/Internal$IntList;->size()I

    move-result v3

    mul-int/2addr v3, v1

    add-int/2addr v0, v3

    move v3, v2

    .line 704
    :goto_3
    iget-object v4, p0, Lcom/android/dialer/callintent/CallSpecificAppData;->uiActionTimestampsSinceAppLaunch_:Lcom/google/protobuf/Internal$LongList;

    invoke-interface {v4}, Lcom/google/protobuf/Internal$LongList;->size()I

    move-result v4

    if-ge v2, v4, :cond_9

    .line 705
    iget-object v4, p0, Lcom/android/dialer/callintent/CallSpecificAppData;->uiActionTimestampsSinceAppLaunch_:Lcom/google/protobuf/Internal$LongList;

    .line 706
    invoke-interface {v4, v2}, Lcom/google/protobuf/Internal$LongList;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeInt64SizeNoTag(J)I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_9
    add-int/2addr v0, v3

    .line 709
    invoke-virtual {p0}, Lcom/android/dialer/callintent/CallSpecificAppData;->getUiActionTimestampsSinceAppLaunchList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    mul-int/2addr v2, v1

    add-int/2addr v0, v2

    .line 711
    iget v1, p0, Lcom/android/dialer/callintent/CallSpecificAppData;->bitField0_:I

    const/16 v2, 0x40

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_a

    const/16 v1, 0xa

    .line 712
    iget v2, p0, Lcom/android/dialer/callintent/CallSpecificAppData;->startingTabIndex_:I

    .line 713
    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 715
    :cond_a
    iget v1, p0, Lcom/android/dialer/callintent/CallSpecificAppData;->bitField0_:I

    const/16 v2, 0x80

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_b

    const/16 v1, 0xb

    .line 716
    iget v2, p0, Lcom/android/dialer/callintent/CallSpecificAppData;->lightbringerButtonAppearInExpandedCallLogItemCount_:I

    .line 717
    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 719
    :cond_b
    iget v1, p0, Lcom/android/dialer/callintent/CallSpecificAppData;->bitField0_:I

    const/16 v2, 0x100

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_c

    const/16 v1, 0xc

    .line 720
    iget v2, p0, Lcom/android/dialer/callintent/CallSpecificAppData;->lightbringerButtonAppearInCollapsedCallLogItemCount_:I

    .line 721
    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 723
    :cond_c
    iget v1, p0, Lcom/android/dialer/callintent/CallSpecificAppData;->bitField0_:I

    const/16 v2, 0x200

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_d

    const/16 v1, 0xd

    .line 724
    iget v2, p0, Lcom/android/dialer/callintent/CallSpecificAppData;->lightbringerButtonAppearInSearchCount_:I

    .line 725
    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 727
    :cond_d
    iget-object v1, p0, Lcom/android/dialer/callintent/CallSpecificAppData;->unknownFields:Lcom/google/protobuf/UnknownFieldSetLite;

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSetLite;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 728
    iput v0, p0, Lcom/android/dialer/callintent/CallSpecificAppData;->memoizedSerializedSize:I

    return v0
.end method

.method public getSpeedDialContactPosition()I
    .locals 1

    .line 216
    iget v0, p0, Lcom/android/dialer/callintent/CallSpecificAppData;->speedDialContactPosition_:I

    return v0
.end method

.method public getSpeedDialContactType(I)Lcom/android/dialer/callintent/SpeedDialContactType$Type;
    .locals 2

    .line 156
    sget-object v0, Lcom/android/dialer/callintent/CallSpecificAppData;->speedDialContactType_converter_:Lcom/google/protobuf/Internal$ListAdapter$Converter;

    iget-object v1, p0, Lcom/android/dialer/callintent/CallSpecificAppData;->speedDialContactType_:Lcom/google/protobuf/Internal$IntList;

    invoke-interface {v1, p1}, Lcom/google/protobuf/Internal$IntList;->getInt(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ListAdapter$Converter;->convert(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/dialer/callintent/SpeedDialContactType$Type;

    return-object p1
.end method

.method public getSpeedDialContactTypeCount()I
    .locals 1

    .line 149
    iget-object v0, p0, Lcom/android/dialer/callintent/CallSpecificAppData;->speedDialContactType_:Lcom/google/protobuf/Internal$IntList;

    invoke-interface {v0}, Lcom/google/protobuf/Internal$IntList;->size()I

    move-result v0

    return v0
.end method

.method public getSpeedDialContactTypeList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/dialer/callintent/SpeedDialContactType$Type;",
            ">;"
        }
    .end annotation

    .line 141
    new-instance v0, Lcom/google/protobuf/Internal$ListAdapter;

    iget-object v1, p0, Lcom/android/dialer/callintent/CallSpecificAppData;->speedDialContactType_:Lcom/google/protobuf/Internal$IntList;

    sget-object v2, Lcom/android/dialer/callintent/CallSpecificAppData;->speedDialContactType_converter_:Lcom/google/protobuf/Internal$ListAdapter$Converter;

    invoke-direct {v0, v1, v2}, Lcom/google/protobuf/Internal$ListAdapter;-><init>(Ljava/util/List;Lcom/google/protobuf/Internal$ListAdapter$Converter;)V

    return-object v0
.end method

.method public getStartingTabIndex()I
    .locals 1

    .line 483
    iget v0, p0, Lcom/android/dialer/callintent/CallSpecificAppData;->startingTabIndex_:I

    return v0
.end method

.method public getTimeSinceAppLaunch()J
    .locals 2

    .line 247
    iget-wide v0, p0, Lcom/android/dialer/callintent/CallSpecificAppData;->timeSinceAppLaunch_:J

    return-wide v0
.end method

.method public getTimeSinceFirstClick()J
    .locals 2

    .line 278
    iget-wide v0, p0, Lcom/android/dialer/callintent/CallSpecificAppData;->timeSinceFirstClick_:J

    return-wide v0
.end method

.method public getUiActionTimestampsSinceAppLaunch(I)J
    .locals 2

    .line 430
    iget-object v0, p0, Lcom/android/dialer/callintent/CallSpecificAppData;->uiActionTimestampsSinceAppLaunch_:Lcom/google/protobuf/Internal$LongList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$LongList;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getUiActionTimestampsSinceAppLaunchCount()I
    .locals 1

    .line 423
    iget-object v0, p0, Lcom/android/dialer/callintent/CallSpecificAppData;->uiActionTimestampsSinceAppLaunch_:Lcom/google/protobuf/Internal$LongList;

    invoke-interface {v0}, Lcom/google/protobuf/Internal$LongList;->size()I

    move-result v0

    return v0
.end method

.method public getUiActionTimestampsSinceAppLaunchList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 416
    iget-object v0, p0, Lcom/android/dialer/callintent/CallSpecificAppData;->uiActionTimestampsSinceAppLaunch_:Lcom/google/protobuf/Internal$LongList;

    return-object v0
.end method

.method public getUiActionsSinceAppLaunch(I)Lcom/android/dialer/logging/UiAction$Type;
    .locals 2

    .line 342
    sget-object v0, Lcom/android/dialer/callintent/CallSpecificAppData;->uiActionsSinceAppLaunch_converter_:Lcom/google/protobuf/Internal$ListAdapter$Converter;

    iget-object v1, p0, Lcom/android/dialer/callintent/CallSpecificAppData;->uiActionsSinceAppLaunch_:Lcom/google/protobuf/Internal$IntList;

    invoke-interface {v1, p1}, Lcom/google/protobuf/Internal$IntList;->getInt(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ListAdapter$Converter;->convert(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/dialer/logging/UiAction$Type;

    return-object p1
.end method

.method public getUiActionsSinceAppLaunchCount()I
    .locals 1

    .line 330
    iget-object v0, p0, Lcom/android/dialer/callintent/CallSpecificAppData;->uiActionsSinceAppLaunch_:Lcom/google/protobuf/Internal$IntList;

    invoke-interface {v0}, Lcom/google/protobuf/Internal$IntList;->size()I

    move-result v0

    return v0
.end method

.method public getUiActionsSinceAppLaunchList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/dialer/logging/UiAction$Type;",
            ">;"
        }
    .end annotation

    .line 317
    new-instance v0, Lcom/google/protobuf/Internal$ListAdapter;

    iget-object v1, p0, Lcom/android/dialer/callintent/CallSpecificAppData;->uiActionsSinceAppLaunch_:Lcom/google/protobuf/Internal$IntList;

    sget-object v2, Lcom/android/dialer/callintent/CallSpecificAppData;->uiActionsSinceAppLaunch_converter_:Lcom/google/protobuf/Internal$ListAdapter$Converter;

    invoke-direct {v0, v1, v2}, Lcom/google/protobuf/Internal$ListAdapter;-><init>(Ljava/util/List;Lcom/google/protobuf/Internal$ListAdapter$Converter;)V

    return-object v0
.end method

.method public hasCallInitiationType()Z
    .locals 2

    .line 34
    iget v0, p0, Lcom/android/dialer/callintent/CallSpecificAppData;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasCharactersInSearchString()Z
    .locals 2

    .line 100
    iget v0, p0, Lcom/android/dialer/callintent/CallSpecificAppData;->bitField0_:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasLightbringerButtonAppearInCollapsedCallLogItemCount()Z
    .locals 2

    .line 554
    iget v0, p0, Lcom/android/dialer/callintent/CallSpecificAppData;->bitField0_:I

    const/16 v1, 0x100

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasLightbringerButtonAppearInExpandedCallLogItemCount()Z
    .locals 2

    .line 511
    iget v0, p0, Lcom/android/dialer/callintent/CallSpecificAppData;->bitField0_:I

    const/16 v1, 0x80

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasLightbringerButtonAppearInSearchCount()Z
    .locals 2

    .line 585
    iget v0, p0, Lcom/android/dialer/callintent/CallSpecificAppData;->bitField0_:I

    const/16 v1, 0x200

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasPositionOfSelectedSearchResult()Z
    .locals 2

    .line 69
    iget v0, p0, Lcom/android/dialer/callintent/CallSpecificAppData;->bitField0_:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasSpeedDialContactPosition()Z
    .locals 2

    .line 209
    iget v0, p0, Lcom/android/dialer/callintent/CallSpecificAppData;->bitField0_:I

    const/16 v1, 0x8

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasStartingTabIndex()Z
    .locals 2

    .line 476
    iget v0, p0, Lcom/android/dialer/callintent/CallSpecificAppData;->bitField0_:I

    const/16 v1, 0x40

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasTimeSinceAppLaunch()Z
    .locals 2

    .line 240
    iget v0, p0, Lcom/android/dialer/callintent/CallSpecificAppData;->bitField0_:I

    const/16 v1, 0x10

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasTimeSinceFirstClick()Z
    .locals 2

    .line 271
    iget v0, p0, Lcom/android/dialer/callintent/CallSpecificAppData;->bitField0_:I

    const/16 v1, 0x20

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 612
    iget v0, p0, Lcom/android/dialer/callintent/CallSpecificAppData;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    .line 613
    iget v0, p0, Lcom/android/dialer/callintent/CallSpecificAppData;->callInitiationType_:I

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 615
    :cond_0
    iget v0, p0, Lcom/android/dialer/callintent/CallSpecificAppData;->bitField0_:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    .line 616
    iget v0, p0, Lcom/android/dialer/callintent/CallSpecificAppData;->positionOfSelectedSearchResult_:I

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 618
    :cond_1
    iget v0, p0, Lcom/android/dialer/callintent/CallSpecificAppData;->bitField0_:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_2

    const/4 v0, 0x3

    .line 619
    iget v2, p0, Lcom/android/dialer/callintent/CallSpecificAppData;->charactersInSearchString_:I

    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    :cond_2
    const/4 v0, 0x0

    move v2, v0

    .line 621
    :goto_0
    iget-object v3, p0, Lcom/android/dialer/callintent/CallSpecificAppData;->speedDialContactType_:Lcom/google/protobuf/Internal$IntList;

    invoke-interface {v3}, Lcom/google/protobuf/Internal$IntList;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 622
    iget-object v3, p0, Lcom/android/dialer/callintent/CallSpecificAppData;->speedDialContactType_:Lcom/google/protobuf/Internal$IntList;

    invoke-interface {v3, v2}, Lcom/google/protobuf/Internal$IntList;->getInt(I)I

    move-result v3

    invoke-virtual {p1, v1, v3}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 624
    :cond_3
    iget v1, p0, Lcom/android/dialer/callintent/CallSpecificAppData;->bitField0_:I

    const/16 v2, 0x8

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_4

    const/4 v1, 0x5

    .line 625
    iget v3, p0, Lcom/android/dialer/callintent/CallSpecificAppData;->speedDialContactPosition_:I

    invoke-virtual {p1, v1, v3}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 627
    :cond_4
    iget v1, p0, Lcom/android/dialer/callintent/CallSpecificAppData;->bitField0_:I

    const/16 v3, 0x10

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_5

    const/4 v1, 0x6

    .line 628
    iget-wide v3, p0, Lcom/android/dialer/callintent/CallSpecificAppData;->timeSinceAppLaunch_:J

    invoke-virtual {p1, v1, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 630
    :cond_5
    iget v1, p0, Lcom/android/dialer/callintent/CallSpecificAppData;->bitField0_:I

    const/16 v3, 0x20

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_6

    const/4 v1, 0x7

    .line 631
    iget-wide v3, p0, Lcom/android/dialer/callintent/CallSpecificAppData;->timeSinceFirstClick_:J

    invoke-virtual {p1, v1, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    :cond_6
    move v1, v0

    .line 633
    :goto_1
    iget-object v3, p0, Lcom/android/dialer/callintent/CallSpecificAppData;->uiActionsSinceAppLaunch_:Lcom/google/protobuf/Internal$IntList;

    invoke-interface {v3}, Lcom/google/protobuf/Internal$IntList;->size()I

    move-result v3

    if-ge v1, v3, :cond_7

    .line 634
    iget-object v3, p0, Lcom/android/dialer/callintent/CallSpecificAppData;->uiActionsSinceAppLaunch_:Lcom/google/protobuf/Internal$IntList;

    invoke-interface {v3, v1}, Lcom/google/protobuf/Internal$IntList;->getInt(I)I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 636
    :cond_7
    :goto_2
    iget-object v1, p0, Lcom/android/dialer/callintent/CallSpecificAppData;->uiActionTimestampsSinceAppLaunch_:Lcom/google/protobuf/Internal$LongList;

    invoke-interface {v1}, Lcom/google/protobuf/Internal$LongList;->size()I

    move-result v1

    if-ge v0, v1, :cond_8

    const/16 v1, 0x9

    .line 637
    iget-object v2, p0, Lcom/android/dialer/callintent/CallSpecificAppData;->uiActionTimestampsSinceAppLaunch_:Lcom/google/protobuf/Internal$LongList;

    invoke-interface {v2, v0}, Lcom/google/protobuf/Internal$LongList;->getLong(I)J

    move-result-wide v2

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 639
    :cond_8
    iget v0, p0, Lcom/android/dialer/callintent/CallSpecificAppData;->bitField0_:I

    const/16 v1, 0x40

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_9

    const/16 v0, 0xa

    .line 640
    iget v1, p0, Lcom/android/dialer/callintent/CallSpecificAppData;->startingTabIndex_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 642
    :cond_9
    iget v0, p0, Lcom/android/dialer/callintent/CallSpecificAppData;->bitField0_:I

    const/16 v1, 0x80

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_a

    const/16 v0, 0xb

    .line 643
    iget v1, p0, Lcom/android/dialer/callintent/CallSpecificAppData;->lightbringerButtonAppearInExpandedCallLogItemCount_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 645
    :cond_a
    iget v0, p0, Lcom/android/dialer/callintent/CallSpecificAppData;->bitField0_:I

    const/16 v1, 0x100

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_b

    const/16 v0, 0xc

    .line 646
    iget v1, p0, Lcom/android/dialer/callintent/CallSpecificAppData;->lightbringerButtonAppearInCollapsedCallLogItemCount_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 648
    :cond_b
    iget v0, p0, Lcom/android/dialer/callintent/CallSpecificAppData;->bitField0_:I

    const/16 v1, 0x200

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_c

    const/16 v0, 0xd

    .line 649
    iget v1, p0, Lcom/android/dialer/callintent/CallSpecificAppData;->lightbringerButtonAppearInSearchCount_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 651
    :cond_c
    iget-object v0, p0, Lcom/android/dialer/callintent/CallSpecificAppData;->unknownFields:Lcom/google/protobuf/UnknownFieldSetLite;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSetLite;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method
