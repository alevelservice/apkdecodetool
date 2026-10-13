.class public abstract Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport;
.super Ljava/lang/Object;
.source "CrashlyticsReport.java"


# annotations
.annotation runtime Lcom/google/firebase/encoders/annotations/Encodable;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$a;,
        Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$d;,
        Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$b;,
        Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$c;,
        Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$e;,
        Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$Architecture;
    }
.end annotation


# static fields
.field private static final a:Ljava/nio/charset/Charset;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "UTF-8"

    .line 1
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport;->a:Ljava/nio/charset/Charset;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic k()Ljava/nio/charset/Charset;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport;->a:Ljava/nio/charset/Charset;

    return-object v0
.end method

.method public static l()Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$a;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Lcom/google/firebase/crashlytics/internal/model/b$b;

    invoke-direct {v0}, Lcom/google/firebase/crashlytics/internal/model/b$b;-><init>()V

    return-object v0
.end method


# virtual methods
.method public a(JZLjava/lang/String;)Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport;
    .locals 2
    .param p4    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 5
    invoke-virtual {p0}, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport;->j()Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$a;

    move-result-object v0

    .line 6
    invoke-virtual {p0}, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport;->h()Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$d;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 7
    invoke-virtual {p0}, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport;->h()Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$d;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$d;->a(JZLjava/lang/String;)Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$d;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$a;->a(Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$d;)Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$a;

    .line 8
    :cond_0
    invoke-virtual {v0}, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$a;->a()Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$c;)Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport;
    .locals 2
    .param p1    # Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 4
    invoke-virtual {p0}, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport;->j()Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$a;->a(Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$d;)Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$a;

    invoke-virtual {v0, p1}, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$a;->a(Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$c;)Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$a;

    invoke-virtual {v0}, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$a;->a()Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/google/firebase/crashlytics/internal/model/v;)Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport;
    .locals 2
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
            "Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport;->h()Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$d;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport;->j()Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$a;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport;->h()Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$d;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$d;->a(Lcom/google/firebase/crashlytics/internal/model/v;)Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$d;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$a;->a(Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$d;)Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$a;

    invoke-virtual {v0}, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$a;->a()Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Reports without sessions cannot have events added to them."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public abstract a()Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract b()Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract c()Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract d()Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract e()Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$c;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public abstract f()I
.end method

.method public abstract g()Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract h()Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$d;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public i()Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$e;
    .locals 1
    .annotation runtime Lcom/google/firebase/encoders/annotations/Encodable$Ignore;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport;->h()Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$d;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$e;->JAVA:Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$e;

    return-object v0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport;->e()Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$c;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4
    sget-object v0, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$e;->NATIVE:Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$e;

    return-object v0

    .line 5
    :cond_1
    sget-object v0, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$e;->INCOMPLETE:Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$e;

    return-object v0
.end method

.method protected abstract j()Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$a;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method
