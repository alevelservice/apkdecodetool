.class Lk/b/a/v/c$b;
.super Lk/b/a/v/g;
.source "DateTimeFormatterBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lk/b/a/v/c;->a(Lk/b/a/x/i;Ljava/util/Map;)Lk/b/a/v/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lk/b/a/v/k$b;


# direct methods
.method constructor <init>(Lk/b/a/v/c;Lk/b/a/v/k$b;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lk/b/a/v/c$b;->b:Lk/b/a/v/k$b;

    invoke-direct {p0}, Lk/b/a/v/g;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lk/b/a/x/i;JLk/b/a/v/l;Ljava/util/Locale;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p1, p0, Lk/b/a/v/c$b;->b:Lk/b/a/v/k$b;

    invoke-virtual {p1, p2, p3, p4}, Lk/b/a/v/k$b;->a(JLk/b/a/v/l;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public a(Lk/b/a/x/i;Lk/b/a/v/l;Ljava/util/Locale;)Ljava/util/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lk/b/a/x/i;",
            "Lk/b/a/v/l;",
            "Ljava/util/Locale;",
            ")",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation

    .line 2
    iget-object p1, p0, Lk/b/a/v/c$b;->b:Lk/b/a/v/k$b;

    invoke-virtual {p1, p2}, Lk/b/a/v/k$b;->a(Lk/b/a/v/l;)Ljava/util/Iterator;

    move-result-object p1

    return-object p1
.end method
