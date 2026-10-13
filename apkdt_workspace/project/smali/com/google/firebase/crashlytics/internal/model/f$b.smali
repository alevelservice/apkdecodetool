.class final Lcom/google/firebase/crashlytics/internal/model/f$b;
.super Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$d$b;
.source "AutoValue_CrashlyticsReport_Session.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/crashlytics/internal/model/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/Long;

.field private d:Ljava/lang/Long;

.field private e:Ljava/lang/Boolean;

.field private f:Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$d$a;

.field private g:Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$d$f;

.field private h:Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$d$e;

.field private i:Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$d$c;

.field private j:Lcom/google/firebase/crashlytics/internal/model/v;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/crashlytics/internal/model/v<",
            "Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$d$d;",
            ">;"
        }
    .end annotation
.end field

.field private k:Ljava/lang/Integer;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$d$b;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$d;)V
    .locals 2

    .line 3
    invoke-direct {p0}, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$d$b;-><init>()V

    .line 4
    invoke-virtual {p1}, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$d;->e()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/crashlytics/internal/model/f$b;->a:Ljava/lang/String;

    .line 5
    invoke-virtual {p1}, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$d;->g()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/crashlytics/internal/model/f$b;->b:Ljava/lang/String;

    .line 6
    invoke-virtual {p1}, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$d;->j()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/crashlytics/internal/model/f$b;->c:Ljava/lang/Long;

    .line 7
    invoke-virtual {p1}, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$d;->c()Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/crashlytics/internal/model/f$b;->d:Ljava/lang/Long;

    .line 8
    invoke-virtual {p1}, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$d;->l()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/crashlytics/internal/model/f$b;->e:Ljava/lang/Boolean;

    .line 9
    invoke-virtual {p1}, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$d;->a()Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$d$a;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/crashlytics/internal/model/f$b;->f:Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$d$a;

    .line 10
    invoke-virtual {p1}, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$d;->k()Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$d$f;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/crashlytics/internal/model/f$b;->g:Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$d$f;

    .line 11
    invoke-virtual {p1}, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$d;->i()Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$d$e;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/crashlytics/internal/model/f$b;->h:Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$d$e;

    .line 12
    invoke-virtual {p1}, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$d;->b()Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$d$c;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/crashlytics/internal/model/f$b;->i:Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$d$c;

    .line 13
    invoke-virtual {p1}, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$d;->d()Lcom/google/firebase/crashlytics/internal/model/v;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/crashlytics/internal/model/f$b;->j:Lcom/google/firebase/crashlytics/internal/model/v;

    .line 14
    invoke-virtual {p1}, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$d;->f()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/crashlytics/internal/model/f$b;->k:Ljava/lang/Integer;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$d;Lcom/google/firebase/crashlytics/internal/model/f$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/firebase/crashlytics/internal/model/f$b;-><init>(Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$d;)V

    return-void
.end method


# virtual methods
.method public a(I)Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$d$b;
    .locals 0

    .line 12
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/crashlytics/internal/model/f$b;->k:Ljava/lang/Integer;

    return-object p0
.end method

.method public a(J)Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$d$b;
    .locals 0

    .line 3
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/crashlytics/internal/model/f$b;->c:Ljava/lang/Long;

    return-object p0
.end method

.method public a(Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$d$a;)Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$d$b;
    .locals 1

    if-eqz p1, :cond_0

    .line 6
    iput-object p1, p0, Lcom/google/firebase/crashlytics/internal/model/f$b;->f:Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$d$a;

    return-object p0

    .line 7
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Null app"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$d$c;)Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$d$b;
    .locals 0

    .line 10
    iput-object p1, p0, Lcom/google/firebase/crashlytics/internal/model/f$b;->i:Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$d$c;

    return-object p0
.end method

.method public a(Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$d$e;)Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$d$b;
    .locals 0

    .line 9
    iput-object p1, p0, Lcom/google/firebase/crashlytics/internal/model/f$b;->h:Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$d$e;

    return-object p0
.end method

.method public a(Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$d$f;)Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$d$b;
    .locals 0

    .line 8
    iput-object p1, p0, Lcom/google/firebase/crashlytics/internal/model/f$b;->g:Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$d$f;

    return-object p0
.end method

.method public a(Lcom/google/firebase/crashlytics/internal/model/v;)Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$d$b;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/crashlytics/internal/model/v<",
            "Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$d$d;",
            ">;)",
            "Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$d$b;"
        }
    .end annotation

    .line 11
    iput-object p1, p0, Lcom/google/firebase/crashlytics/internal/model/f$b;->j:Lcom/google/firebase/crashlytics/internal/model/v;

    return-object p0
.end method

.method public a(Ljava/lang/Long;)Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$d$b;
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/google/firebase/crashlytics/internal/model/f$b;->d:Ljava/lang/Long;

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$d$b;
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iput-object p1, p0, Lcom/google/firebase/crashlytics/internal/model/f$b;->a:Ljava/lang/String;

    return-object p0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Null generator"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Z)Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$d$b;
    .locals 0

    .line 5
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/crashlytics/internal/model/f$b;->e:Ljava/lang/Boolean;

    return-object p0
.end method

.method public a()Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$d;
    .locals 17

    move-object/from16 v0, p0

    .line 13
    iget-object v1, v0, Lcom/google/firebase/crashlytics/internal/model/f$b;->a:Ljava/lang/String;

    const-string v2, ""

    if-nez v1, :cond_0

    .line 14
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " generator"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 15
    :cond_0
    iget-object v1, v0, Lcom/google/firebase/crashlytics/internal/model/f$b;->b:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 16
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " identifier"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 17
    :cond_1
    iget-object v1, v0, Lcom/google/firebase/crashlytics/internal/model/f$b;->c:Ljava/lang/Long;

    if-nez v1, :cond_2

    .line 18
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " startedAt"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 19
    :cond_2
    iget-object v1, v0, Lcom/google/firebase/crashlytics/internal/model/f$b;->e:Ljava/lang/Boolean;

    if-nez v1, :cond_3

    .line 20
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " crashed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 21
    :cond_3
    iget-object v1, v0, Lcom/google/firebase/crashlytics/internal/model/f$b;->f:Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$d$a;

    if-nez v1, :cond_4

    .line 22
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " app"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 23
    :cond_4
    iget-object v1, v0, Lcom/google/firebase/crashlytics/internal/model/f$b;->k:Ljava/lang/Integer;

    if-nez v1, :cond_5

    .line 24
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " generatorType"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 25
    :cond_5
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 26
    new-instance v1, Lcom/google/firebase/crashlytics/internal/model/f;

    iget-object v4, v0, Lcom/google/firebase/crashlytics/internal/model/f$b;->a:Ljava/lang/String;

    iget-object v5, v0, Lcom/google/firebase/crashlytics/internal/model/f$b;->b:Ljava/lang/String;

    iget-object v2, v0, Lcom/google/firebase/crashlytics/internal/model/f$b;->c:Ljava/lang/Long;

    .line 27
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iget-object v8, v0, Lcom/google/firebase/crashlytics/internal/model/f$b;->d:Ljava/lang/Long;

    iget-object v2, v0, Lcom/google/firebase/crashlytics/internal/model/f$b;->e:Ljava/lang/Boolean;

    .line 28
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    iget-object v10, v0, Lcom/google/firebase/crashlytics/internal/model/f$b;->f:Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$d$a;

    iget-object v11, v0, Lcom/google/firebase/crashlytics/internal/model/f$b;->g:Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$d$f;

    iget-object v12, v0, Lcom/google/firebase/crashlytics/internal/model/f$b;->h:Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$d$e;

    iget-object v13, v0, Lcom/google/firebase/crashlytics/internal/model/f$b;->i:Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$d$c;

    iget-object v14, v0, Lcom/google/firebase/crashlytics/internal/model/f$b;->j:Lcom/google/firebase/crashlytics/internal/model/v;

    iget-object v2, v0, Lcom/google/firebase/crashlytics/internal/model/f$b;->k:Ljava/lang/Integer;

    .line 29
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v15

    const/16 v16, 0x0

    move-object v3, v1

    invoke-direct/range {v3 .. v16}, Lcom/google/firebase/crashlytics/internal/model/f;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/Long;ZLcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$d$a;Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$d$f;Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$d$e;Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$d$c;Lcom/google/firebase/crashlytics/internal/model/v;ILcom/google/firebase/crashlytics/internal/model/f$a;)V

    return-object v1

    .line 30
    :cond_6
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Missing required properties:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public b(Ljava/lang/String;)Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$d$b;
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iput-object p1, p0, Lcom/google/firebase/crashlytics/internal/model/f$b;->b:Ljava/lang/String;

    return-object p0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Null identifier"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
