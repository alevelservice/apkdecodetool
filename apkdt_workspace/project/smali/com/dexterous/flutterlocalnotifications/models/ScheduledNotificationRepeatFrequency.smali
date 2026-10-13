.class public final enum Lcom/dexterous/flutterlocalnotifications/models/ScheduledNotificationRepeatFrequency;
.super Ljava/lang/Enum;
.source "ScheduledNotificationRepeatFrequency.java"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/dexterous/flutterlocalnotifications/models/ScheduledNotificationRepeatFrequency;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/dexterous/flutterlocalnotifications/models/ScheduledNotificationRepeatFrequency;

.field public static final enum Daily:Lcom/dexterous/flutterlocalnotifications/models/ScheduledNotificationRepeatFrequency;

.field public static final enum Weekly:Lcom/dexterous/flutterlocalnotifications/models/ScheduledNotificationRepeatFrequency;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/dexterous/flutterlocalnotifications/models/ScheduledNotificationRepeatFrequency;

    const/4 v1, 0x0

    const-string v2, "Daily"

    invoke-direct {v0, v2, v1}, Lcom/dexterous/flutterlocalnotifications/models/ScheduledNotificationRepeatFrequency;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexterous/flutterlocalnotifications/models/ScheduledNotificationRepeatFrequency;->Daily:Lcom/dexterous/flutterlocalnotifications/models/ScheduledNotificationRepeatFrequency;

    .line 2
    new-instance v0, Lcom/dexterous/flutterlocalnotifications/models/ScheduledNotificationRepeatFrequency;

    const/4 v2, 0x1

    const-string v3, "Weekly"

    invoke-direct {v0, v3, v2}, Lcom/dexterous/flutterlocalnotifications/models/ScheduledNotificationRepeatFrequency;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexterous/flutterlocalnotifications/models/ScheduledNotificationRepeatFrequency;->Weekly:Lcom/dexterous/flutterlocalnotifications/models/ScheduledNotificationRepeatFrequency;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/dexterous/flutterlocalnotifications/models/ScheduledNotificationRepeatFrequency;

    .line 3
    sget-object v3, Lcom/dexterous/flutterlocalnotifications/models/ScheduledNotificationRepeatFrequency;->Daily:Lcom/dexterous/flutterlocalnotifications/models/ScheduledNotificationRepeatFrequency;

    aput-object v3, v0, v1

    sget-object v1, Lcom/dexterous/flutterlocalnotifications/models/ScheduledNotificationRepeatFrequency;->Weekly:Lcom/dexterous/flutterlocalnotifications/models/ScheduledNotificationRepeatFrequency;

    aput-object v1, v0, v2

    sput-object v0, Lcom/dexterous/flutterlocalnotifications/models/ScheduledNotificationRepeatFrequency;->$VALUES:[Lcom/dexterous/flutterlocalnotifications/models/ScheduledNotificationRepeatFrequency;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dexterous/flutterlocalnotifications/models/ScheduledNotificationRepeatFrequency;
    .locals 1

    .line 1
    const-class v0, Lcom/dexterous/flutterlocalnotifications/models/ScheduledNotificationRepeatFrequency;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/dexterous/flutterlocalnotifications/models/ScheduledNotificationRepeatFrequency;

    return-object p0
.end method

.method public static values()[Lcom/dexterous/flutterlocalnotifications/models/ScheduledNotificationRepeatFrequency;
    .locals 1

    .line 1
    sget-object v0, Lcom/dexterous/flutterlocalnotifications/models/ScheduledNotificationRepeatFrequency;->$VALUES:[Lcom/dexterous/flutterlocalnotifications/models/ScheduledNotificationRepeatFrequency;

    invoke-virtual {v0}, [Lcom/dexterous/flutterlocalnotifications/models/ScheduledNotificationRepeatFrequency;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dexterous/flutterlocalnotifications/models/ScheduledNotificationRepeatFrequency;

    return-object v0
.end method
