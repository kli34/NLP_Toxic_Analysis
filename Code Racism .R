dat <- read.csv(file.choose())

racism <- grepl("nigger|jew|chink|jewish|faggot|ching chong|niggaz|nl33ers|niggers", dat$comment_text[1:153164])
a <- data.frame(racism)
a$racism <- ifelse(a$racism == TRUE, 1, 0)

dat <- cbind(dat, a)