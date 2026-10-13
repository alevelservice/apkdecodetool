.class public abstract Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$d$d$a;
.super Ljava/lang/Object;
.source "CrashlyticsReport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$d$d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$d$d$a$a;,
        Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$d$d$a$b;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static f()Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$d$d$a$a;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Lcom/google/firebase/crashlytics/internal/model/k$b;

    invoke-direct {v0}, Lcom/google/firebase/crashlytics/internal/model/k$b;-><init>()V

    return-object v0
.end method


# virtual methods
.method public abstract a()Ljava/lang/Boolean;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public abstract b()Lcom/google/firebase/crashlytics/internal/model/v;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/firebase/crashlytics/internal/model/v<",
            "Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$b;",
            ">;"
        }
    .end annotation
.end method

.method public abstract c()Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$d$d$a$b;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract d()I
.end method

.method public abstract e()Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$d$d$a$a;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method
