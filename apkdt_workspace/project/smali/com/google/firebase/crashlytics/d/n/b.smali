.class final synthetic Lcom/google/firebase/crashlytics/d/n/b;
.super Ljava/lang/Object;
.source "DataTransportCrashlyticsReportSender.java"

# interfaces
.implements Le/i/b/a/e;


# static fields
.field private static final a:Lcom/google/firebase/crashlytics/d/n/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/firebase/crashlytics/d/n/b;

    invoke-direct {v0}, Lcom/google/firebase/crashlytics/d/n/b;-><init>()V

    sput-object v0, Lcom/google/firebase/crashlytics/d/n/b;->a:Lcom/google/firebase/crashlytics/d/n/b;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Le/i/b/a/e;
    .locals 1

    sget-object v0, Lcom/google/firebase/crashlytics/d/n/b;->a:Lcom/google/firebase/crashlytics/d/n/b;

    return-object v0
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport;

    invoke-static {p1}, Lcom/google/firebase/crashlytics/d/n/c;->a(Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport;)[B

    move-result-object p1

    return-object p1
.end method
