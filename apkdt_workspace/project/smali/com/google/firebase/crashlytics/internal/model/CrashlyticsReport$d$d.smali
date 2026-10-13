.class public abstract Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$d$d;
.super Ljava/lang/Object;
.source "CrashlyticsReport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$d$d$b;,
        Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$d$d$d;,
        Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$d$d$c;,
        Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$d$d$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static g()Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$d$d$b;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Lcom/google/firebase/crashlytics/internal/model/j$b;

    invoke-direct {v0}, Lcom/google/firebase/crashlytics/internal/model/j$b;-><init>()V

    return-object v0
.end method


# virtual methods
.method public abstract a()Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$d$d$a;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract b()Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$d$d$c;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract c()Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$d$d$d;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public abstract d()J
.end method

.method public abstract e()Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract f()Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$d$d$b;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method
