.class public abstract Lcom/google/firebase/crashlytics/d/h/q;
.super Ljava/lang/Object;
.source "CrashlyticsReportWithSessionId.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport;Ljava/lang/String;)Lcom/google/firebase/crashlytics/d/h/q;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Lcom/google/firebase/crashlytics/d/h/c;

    invoke-direct {v0, p0, p1}, Lcom/google/firebase/crashlytics/d/h/c;-><init>(Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public abstract a()Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport;
.end method

.method public abstract b()Ljava/lang/String;
.end method
