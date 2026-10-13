.class public final enum Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$e;
.super Ljava/lang/Enum;
.source "CrashlyticsReport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$e;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum INCOMPLETE:Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$e;

.field public static final enum JAVA:Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$e;

.field public static final enum NATIVE:Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$e;

.field private static final synthetic e:[Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$e;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$e;

    const/4 v1, 0x0

    const-string v2, "INCOMPLETE"

    invoke-direct {v0, v2, v1}, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$e;->INCOMPLETE:Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$e;

    .line 2
    new-instance v0, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$e;

    const/4 v2, 0x1

    const-string v3, "JAVA"

    invoke-direct {v0, v3, v2}, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$e;->JAVA:Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$e;

    .line 3
    new-instance v0, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$e;

    const/4 v3, 0x2

    const-string v4, "NATIVE"

    invoke-direct {v0, v4, v3}, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$e;->NATIVE:Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$e;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$e;

    .line 4
    sget-object v4, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$e;->INCOMPLETE:Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$e;

    aput-object v4, v0, v1

    sget-object v1, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$e;->JAVA:Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$e;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$e;->NATIVE:Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$e;

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$e;->e:[Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$e;

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

.method public static valueOf(Ljava/lang/String;)Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$e;
    .locals 1

    .line 1
    const-class v0, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$e;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$e;

    return-object p0
.end method

.method public static values()[Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$e;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$e;->e:[Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$e;

    invoke-virtual {v0}, [Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$e;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$e;

    return-object v0
.end method
