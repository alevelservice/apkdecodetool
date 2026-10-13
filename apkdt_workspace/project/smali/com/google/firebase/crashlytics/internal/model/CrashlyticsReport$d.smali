.class public abstract Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$d;
.super Ljava/lang/Object;
.source "CrashlyticsReport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$d$d;,
        Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$d$c;,
        Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$d$e;,
        Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$d$a;,
        Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$d$f;,
        Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$d$b;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static n()Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$d$b;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Lcom/google/firebase/crashlytics/internal/model/f$b;

    invoke-direct {v0}, Lcom/google/firebase/crashlytics/internal/model/f$b;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/firebase/crashlytics/internal/model/f$b;->a(Z)Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$d$b;

    return-object v0
.end method


# virtual methods
.method public abstract a()Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$d$a;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method a(JZLjava/lang/String;)Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$d;
    .locals 1
    .param p4    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    invoke-virtual {p0}, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$d;->m()Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$d$b;

    move-result-object v0

    .line 3
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$d$b;->a(Ljava/lang/Long;)Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$d$b;

    .line 4
    invoke-virtual {v0, p3}, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$d$b;->a(Z)Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$d$b;

    if-eqz p4, :cond_0

    .line 5
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$d$f;->b()Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$d$f$a;

    move-result-object p1

    invoke-virtual {p1, p4}, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$d$f$a;->a(Ljava/lang/String;)Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$d$f$a;

    invoke-virtual {p1}, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$d$f$a;->a()Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$d$f;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$d$b;->a(Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$d$f;)Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$d$b;

    invoke-virtual {v0}, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$d$b;->a()Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$d;

    .line 6
    :cond_0
    invoke-virtual {v0}, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$d$b;->a()Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$d;

    move-result-object p1

    return-object p1
.end method

.method a(Lcom/google/firebase/crashlytics/internal/model/v;)Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$d;
    .locals 1
    .param p1    # Lcom/google/firebase/crashlytics/internal/model/v;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/crashlytics/internal/model/v<",
            "Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$d$d;",
            ">;)",
            "Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$d;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$d;->m()Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$d$b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$d$b;->a(Lcom/google/firebase/crashlytics/internal/model/v;)Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$d$b;

    invoke-virtual {v0}, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$d$b;->a()Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$d;

    move-result-object p1

    return-object p1
.end method

.method public abstract b()Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$d$c;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public abstract c()Ljava/lang/Long;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public abstract d()Lcom/google/firebase/crashlytics/internal/model/v;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/firebase/crashlytics/internal/model/v<",
            "Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$d$d;",
            ">;"
        }
    .end annotation
.end method

.method public abstract e()Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract f()I
.end method

.method public abstract g()Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation runtime Lcom/google/firebase/encoders/annotations/Encodable$Ignore;
    .end annotation
.end method

.method public h()[B
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation runtime Lcom/google/firebase/encoders/annotations/Encodable$Field;
        name = "identifier"
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$d;->g()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport;->k()Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    return-object v0
.end method

.method public abstract i()Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$d$e;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public abstract j()J
.end method

.method public abstract k()Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$d$f;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public abstract l()Z
.end method

.method public abstract m()Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$d$b;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method
