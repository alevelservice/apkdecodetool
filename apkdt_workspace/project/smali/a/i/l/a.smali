.class public final La/i/l/a;
.super Ljava/lang/Object;
.source "BidiFormatter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La/i/l/a$b;,
        La/i/l/a$a;
    }
.end annotation


# static fields
.field static final d:La/i/l/d;

.field private static final e:Ljava/lang/String;

.field private static final f:Ljava/lang/String;

.field static final g:La/i/l/a;

.field static final h:La/i/l/a;


# instance fields
.field private final a:Z

.field private final b:I

.field private final c:La/i/l/d;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    sget-object v0, La/i/l/e;->c:La/i/l/d;

    sput-object v0, La/i/l/a;->d:La/i/l/d;

    const/16 v0, 0x200e

    .line 2
    invoke-static {v0}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v0

    sput-object v0, La/i/l/a;->e:Ljava/lang/String;

    const/16 v0, 0x200f

    .line 3
    invoke-static {v0}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v0

    sput-object v0, La/i/l/a;->f:Ljava/lang/String;

    .line 4
    new-instance v0, La/i/l/a;

    sget-object v1, La/i/l/a;->d:La/i/l/d;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v2, v1}, La/i/l/a;-><init>(ZILa/i/l/d;)V

    sput-object v0, La/i/l/a;->g:La/i/l/a;

    .line 5
    new-instance v0, La/i/l/a;

    sget-object v1, La/i/l/a;->d:La/i/l/d;

    const/4 v3, 0x1

    invoke-direct {v0, v3, v2, v1}, La/i/l/a;-><init>(ZILa/i/l/d;)V

    sput-object v0, La/i/l/a;->h:La/i/l/a;

    return-void
.end method

.method constructor <init>(ZILa/i/l/d;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-boolean p1, p0, La/i/l/a;->a:Z

    .line 3
    iput p2, p0, La/i/l/a;->b:I

    .line 4
    iput-object p3, p0, La/i/l/a;->c:La/i/l/d;

    return-void
.end method

.method private a(Ljava/lang/CharSequence;La/i/l/d;)Ljava/lang/String;
    .locals 2

    .line 2
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-interface {p2, p1, v1, v0}, La/i/l/d;->a(Ljava/lang/CharSequence;II)Z

    move-result p2

    .line 3
    iget-boolean v0, p0, La/i/l/a;->a:Z

    if-nez v0, :cond_1

    if-nez p2, :cond_0

    invoke-static {p1}, La/i/l/a;->c(Ljava/lang/CharSequence;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 4
    :cond_0
    sget-object p1, La/i/l/a;->e:Ljava/lang/String;

    return-object p1

    .line 5
    :cond_1
    iget-boolean v0, p0, La/i/l/a;->a:Z

    if-eqz v0, :cond_3

    if-eqz p2, :cond_2

    invoke-static {p1}, La/i/l/a;->c(Ljava/lang/CharSequence;)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_3

    .line 6
    :cond_2
    sget-object p1, La/i/l/a;->f:Ljava/lang/String;

    return-object p1

    :cond_3
    const-string p1, ""

    return-object p1
.end method

.method static a(Ljava/util/Locale;)Z
    .locals 1

    .line 20
    invoke-static {p0}, La/i/l/f;->b(Ljava/util/Locale;)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static b(Ljava/lang/CharSequence;)I
    .locals 2

    .line 7
    new-instance v0, La/i/l/a$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, La/i/l/a$b;-><init>(Ljava/lang/CharSequence;Z)V

    invoke-virtual {v0}, La/i/l/a$b;->c()I

    move-result p0

    return p0
.end method

.method public static b()La/i/l/a;
    .locals 1

    .line 1
    new-instance v0, La/i/l/a$a;

    invoke-direct {v0}, La/i/l/a$a;-><init>()V

    invoke-virtual {v0}, La/i/l/a$a;->a()La/i/l/a;

    move-result-object v0

    return-object v0
.end method

.method private b(Ljava/lang/CharSequence;La/i/l/d;)Ljava/lang/String;
    .locals 2

    .line 2
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-interface {p2, p1, v1, v0}, La/i/l/d;->a(Ljava/lang/CharSequence;II)Z

    move-result p2

    .line 3
    iget-boolean v0, p0, La/i/l/a;->a:Z

    if-nez v0, :cond_1

    if-nez p2, :cond_0

    invoke-static {p1}, La/i/l/a;->b(Ljava/lang/CharSequence;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 4
    :cond_0
    sget-object p1, La/i/l/a;->e:Ljava/lang/String;

    return-object p1

    .line 5
    :cond_1
    iget-boolean v0, p0, La/i/l/a;->a:Z

    if-eqz v0, :cond_3

    if-eqz p2, :cond_2

    invoke-static {p1}, La/i/l/a;->b(Ljava/lang/CharSequence;)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_3

    .line 6
    :cond_2
    sget-object p1, La/i/l/a;->f:Ljava/lang/String;

    return-object p1

    :cond_3
    const-string p1, ""

    return-object p1
.end method

.method private static c(Ljava/lang/CharSequence;)I
    .locals 2

    .line 1
    new-instance v0, La/i/l/a$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, La/i/l/a$b;-><init>(Ljava/lang/CharSequence;Z)V

    invoke-virtual {v0}, La/i/l/a$b;->d()I

    move-result p0

    return p0
.end method


# virtual methods
.method public a(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 2

    .line 19
    iget-object v0, p0, La/i/l/a;->c:La/i/l/d;

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, La/i/l/a;->a(Ljava/lang/CharSequence;La/i/l/d;Z)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/CharSequence;La/i/l/d;Z)Ljava/lang/CharSequence;
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const/4 v0, 0x0

    .line 7
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-interface {p2, p1, v0, v1}, La/i/l/d;->a(Ljava/lang/CharSequence;II)Z

    move-result p2

    .line 8
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 9
    invoke-virtual {p0}, La/i/l/a;->a()Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz p3, :cond_2

    if-eqz p2, :cond_1

    .line 10
    sget-object v1, La/i/l/e;->b:La/i/l/d;

    goto :goto_0

    :cond_1
    sget-object v1, La/i/l/e;->a:La/i/l/d;

    .line 11
    :goto_0
    invoke-direct {p0, p1, v1}, La/i/l/a;->b(Ljava/lang/CharSequence;La/i/l/d;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 12
    :cond_2
    iget-boolean v1, p0, La/i/l/a;->a:Z

    if-eq p2, v1, :cond_4

    if-eqz p2, :cond_3

    const/16 v1, 0x202b

    goto :goto_1

    :cond_3
    const/16 v1, 0x202a

    .line 13
    :goto_1
    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 14
    invoke-virtual {v0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    const/16 v1, 0x202c

    .line 15
    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    goto :goto_2

    .line 16
    :cond_4
    invoke-virtual {v0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :goto_2
    if-eqz p3, :cond_6

    if-eqz p2, :cond_5

    .line 17
    sget-object p2, La/i/l/e;->b:La/i/l/d;

    goto :goto_3

    :cond_5
    sget-object p2, La/i/l/e;->a:La/i/l/d;

    .line 18
    :goto_3
    invoke-direct {p0, p1, p2}, La/i/l/a;->a(Ljava/lang/CharSequence;La/i/l/d;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :cond_6
    return-object v0
.end method

.method public a()Z
    .locals 1

    .line 1
    iget v0, p0, La/i/l/a;->b:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
